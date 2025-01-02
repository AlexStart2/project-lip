open Ast
(* Environment stack: List of Hashtbls *)
exception BreakException
type env = (string, variable) Hashtbl.t list

let built_in_functions = Hashtbl.create 16

(* Get the type of a variable *)

let type_of = function
  | Some IntVal _ -> "i32"
  | Some StringVal _ -> "StringVal"
  | Some ArrayVal _ -> "array"
  | Some RefVal _ -> "ref"
  | Some UnitVal -> "unit"
  | Some FuncVal _ -> "function"
  | Some StringR _ -> "StringR"
  | None -> failwith "Unknown type"

let var_type_to_string = function
  | Mutable -> "mutable"
  | Immutable -> "immutable"
  | Reference -> "reference"
  | Function -> "function"
  | Borrowed -> "borrowed"
  | Unit -> "unit"

(* Print the environment stack *)

let rec print_env env = 
  match env with
  | [] -> ()
  | scope :: rest -> 
    Hashtbl.iter (fun key (value:variable) -> print_endline (key ^ " : " ^ (type_of (Some (fst value))))) scope;
    print_env rest

  
(* Find a variable in the environment stack *)
let rec find_in_env (env:env) name =
  match env with
  | [] -> failwith ("Variable " ^ name ^ " not found")
  | scope :: rest ->
      (match Hashtbl.find_opt scope name with
      | Some v -> v
      | None -> find_in_env rest name)

let print_func_details func =
  Printf.printf "Function %s\n" func.name;
  List.iter (fun param -> match param with
    | SimpleParam (name, t) -> Printf.printf "Simple param: %s : %s\n" name t
    | RefParam (name, t) -> Printf.printf "Ref param: %s : %s\n" name t) func.params;
  Printf.printf "Return type: %s\n" (match func.return_type with
    | Some t -> t
    | None -> "unit")

(* Convert a variable to a string *)

let rec val_to_string (v:var) var_name = match v with
| IntVal n -> string_of_int n
| StringVal s -> s
| StringR s -> s
| ArrayVal _ -> failwith "Not implemented"
| RefVal r -> val_to_string (fst(!r)) var_name
| UnitVal -> failwith ("Variable " ^ var_name ^ " is a unit value")
| FuncVal _ -> failwith (var_name ^ " is a function")



(* Add or update a variable in the current scope *)
let rec add_to_env (env: env) name variable (new_var:bool) =
  match env with
  | [] -> failwith "Environment is empty, cannot add variable"
  | scope :: rest ->
      if Hashtbl.mem scope name then
        Hashtbl.replace scope name variable (* Update variable in the current scope *)
      else if rest = [] then
        Hashtbl.add scope name variable (* Add to the current scope if no outer scope *)
      else
        if new_var then
          Hashtbl.add scope name variable (* Add to the current scope *)
        else
        add_to_env rest name variable new_var (* Recursively check outer scopes *)


(* Create a new scope and extend the environment stack *)
let push_scope (env:env) =
  let new_scope = Hashtbl.create 16 in
  new_scope :: env

(* Remove the top scope from the environment stack *)
let pop_scope env =
  match env with
  | [] -> failwith "Cannot pop from an empty environment"
  | scope :: rest ->
      Hashtbl.clear scope; (* Free memory for the scope *)
      rest

  
let find_function_in_env env name =
  try
    let x = find_in_env env name in
      match x with
      | (f, Function) -> Some f
      | _ -> None
  with 
  | Failure _ -> None

let rec find_ref_val var =
  match var with
  | (RefVal r, _) -> find_ref_val !r
  | _ -> ref var

(* Evaluate a binary operation *)
let eval_binary_op op lhs rhs =
  match (op, lhs, rhs) with
  | ("+", IntVal l, IntVal r) -> IntVal (l + r)
  | ("-", IntVal l, IntVal r) -> IntVal (l - r)
  | ("*", IntVal l, IntVal r) -> IntVal (l * r)
  | ("/", IntVal l, IntVal r) -> IntVal (l / r)
  | ("%", IntVal l, IntVal r) -> IntVal (l mod r)
  | ("==", IntVal l, IntVal r) -> IntVal (if l = r then 1 else 0)
  | ("!=", IntVal l, IntVal r) -> IntVal (if l <> r then 1 else 0)
  | ("&&", IntVal l, IntVal r) -> IntVal (if l <> 0 && r <> 0 then 1 else 0)
  | ("||", IntVal l, IntVal r) -> IntVal (if l <> 0 || r <> 0 then 1 else 0)
  | ("&", IntVal l, IntVal r) -> IntVal (l land r)
  | ("|", IntVal l, IntVal r) -> IntVal (l lor r)
  | ("^", IntVal l, IntVal r) -> IntVal (l lxor r)
  | ("<<", IntVal l, IntVal r) -> IntVal (l lsl r)
  | (">>", IntVal l, IntVal r) -> IntVal (l asr r)
  | ("<", IntVal l, IntVal r) -> IntVal (if l < r then 1 else 0)
  | ("<=", IntVal l, IntVal r) -> IntVal (if l <= r then 1 else 0)
  | (">", IntVal l, IntVal r) -> IntVal (if l > r then 1 else 0)
  | (">=", IntVal l, IntVal r) -> IntVal (if l >= r then 1 else 0)
  | _ -> failwith ("Unsupported binary operation: " ^ op)

  


  let rec eval_expr (env : env) (expr : expr) : var =
    (* print_endline ("Evaluating expression: " ^ string_of_expr expr); *)
    match expr with
    | Int n -> IntVal n
    | String s -> StringVal s
    | Var name -> let (v, _) = find_in_env env name in v
    | Array elements -> (
      let values = List.map (eval_expr env) elements in
      ArrayVal values
    )
  
    | NamespaceCall (namespace, func_name, args) -> (
      let eval_args = List.map (eval_expr env) args in
      match (namespace, func_name) with
      | ("String", "from") -> (
          match eval_args with
          | [StringVal s] -> StringR s
          | _ -> failwith "String::from expects a single string argument"
        )
      | _ -> failwith ("Undefined function: " ^ namespace ^ "::" ^ func_name)
    )
    
    | FunctionCall (name, args) -> (
      let eval_args = List.map (eval_expr env) args in
      match find_function_in_env env name with
      | Some (FuncVal func) -> ( call_function env func eval_args)
      | None -> (
          match find_function_in_build_in name args env with
          | Some f -> f
          | None -> failwith ("Undefined function: " ^ name)
        )
      | _ -> failwith "Function call failed"
    ) 
    | MethodCall (obj, method_name, args) -> (
      match obj with
        | Var name -> let v = find_in_env env name in
          (match v with
            | (RefVal r, _) -> (
              let target = find_ref_val !r in
              match !target with
              | (StringR string, Mutable) -> (
                let eval_args = List.map (eval_expr env) args in
                match method_name with
                | "push_str" -> (
                  match eval_args with
                  | [StringVal suffix] -> target := (StringR (string ^ suffix), Mutable); UnitVal
                  | _ -> failwith "push_str expects a single string argument")
                | _ -> failwith ("Undefined method: " ^ method_name)
              )
              | (StringR _, Immutable) -> failwith "Cannot call method push_str on immutable strings"
              | _ -> failwith "Method call must be called on a variable of type object string"
            )
            | (StringR string, Mutable) -> (
              let eval_args = List.map (eval_expr env) args in
                match method_name with
                | "push_str" -> (
                  match eval_args with
                  | [StringVal suffix] -> add_to_env env name (StringVal (string ^ suffix), Mutable) false; UnitVal
                  | _ -> failwith "push_str expects a single string argument")
                | _ -> failwith ("Undefined method: " ^ method_name)
              )
              | (StringR _, Immutable) -> failwith "Cannot call method push_str on immutable strings"
              | _ -> failwith "Method call must be called on a variable of type object string here2"
            )
        | _ -> failwith "Method call must be called on a variable"
        )
    | BinaryOp (op, lhs, rhs) ->
        let lval = eval_expr env lhs in
        let rval = eval_expr env rhs in
        eval_binary_op op lval rval
    | UnaryOp (op, operand) ->
        eval_unary_op op env operand
    | BlockExpr block -> exec_block env block

and eval_unary_op op env expr =
  let v = eval_expr env expr in
  match (op, v) with
  | ("!", IntVal n) -> IntVal (if n = 0 then 1 else 0)
  | ("-", IntVal n) -> IntVal (-n)
  | ("&", _) -> (match expr with 
    | Var n -> let var = find_in_env env n in RefVal (ref var)
      | _ -> failwith "Expected a variable");
  | ("&mut", _) -> (match expr with 
    | Var n -> let var = find_in_env env n in
      (match (snd(var)) with
      | Mutable -> RefVal (ref var)
      | _ -> failwith "Expected a mutable variable")
    | _ -> failwith "Expected a variable")
  | _ -> failwith ("Unsupported unary operation: " ^ op)

and find_function_in_build_in name args env =
  match Hashtbl.find_opt built_in_functions name with
  | Some f -> Some (f args env)
  | None -> None


(* Initialize built-in functions *)
and initialize_builtins _ = 
  Hashtbl.add built_in_functions "println!" (fun args env ->
    let eval_args = List.map (eval_expr env) args in
      match eval_args with
      | [StringVal value] -> 
          let interpolated = 
            Str.global_substitute (Str.regexp "{[a-zA-Z_][a-zA-Z0-9_]*}")
              (fun matched ->
                let var_name = String.sub (Str.matched_string matched) 1 
                               (String.length (Str.matched_string matched) - 2) in
                let v = find_in_env env var_name in
                match v with
                | (_, Borrowed) -> failwith ("borrow of moved value " ^ var_name)
                | (_, _ ) -> (val_to_string (fst (v)) var_name)
              ) 
              value
          in
          print_endline interpolated; 
          UnitVal
      | _ -> failwith "println! expects a single string argument"
    )

and exec_stmt (env : env) (stmt : stmt) : var option =
  match stmt with
  | Let (name, expr, is_mutable) ->
    let value = eval_expr env expr in
    let check = 
    (match value with
    | StringR _ -> ( match expr with 
      | Var n -> let (var, _) = find_in_env env n in add_to_env env n (var, Borrowed) false; true
      | _ -> false)
    | RefVal _ -> ( match expr with 
      | Var n -> let var = find_in_env env n in if is_mutable then add_to_env env n (RefVal(ref(var)), Mutable) true else
        add_to_env env n (RefVal(ref(var)), Immutable) true; true
      | _ -> false)
    | _ -> false
    ) in
    if check then None else
    (match is_mutable with
    | true -> add_to_env env name (value, Mutable) true; None
    | false -> add_to_env env name (value, Immutable) true; None)

  | Assign (name, expr) ->
    let value = eval_expr env expr in
    (match value with
    | StringR _ -> ( match expr with 
      | Var n -> let (var, _) = find_in_env env n in add_to_env env n (var, Borrowed) false
      | _ -> ())
    | _ -> ()
    );
    let (var, var_type) = find_in_env env name in
    (match var_type with
    | Mutable ->  if (type_of (Some value)) = (type_of (Some(var))) 
      then add_to_env env name (value, Mutable) false
    else failwith "Type mismatch"; None
    |  Immutable -> failwith ("Cannot assign to immutable variable " ^ name)
    |  Reference -> failwith ("Cannot assign to reference variable " ^ name)
    |  Unit -> failwith ("Cannot assign to unit variable " ^ name)
    |  Function -> failwith ("Cannot assign to function variable " ^ name)
    |  Borrowed -> failwith ("Cannot assign to borrowed variable " ^ name))
  | Expr expr -> Some(eval_expr env expr)
  | If (cond, then_block, else_block) ->
      (match eval_expr env cond with
      | IntVal cond_val -> if cond_val = 1 then Some (exec_block env then_block)
          else ( match else_block with
            | Some block -> Some (exec_block env block)
            | None -> (); None) 
      | _ -> failwith "Condition must be an integer")
      
  | Break -> raise BreakException
  | Loop block -> (
      try
        while true do ignore(exec_block env block) done
      with BreakException -> (); None
  )
  | FunctionDef func -> add_to_env env func.name (FuncVal func, Function) true; None
  | ErrorStmt -> failwith "Error statement"

and call_function (env:env) func (arg_vals:var list) : var =
  (* print_func_details func; *)
 let local_env = push_scope env in
 if List.length func.params <> List.length arg_vals then
  failwith "Mismatched number of parameters and arguments";
  List.iter2(
    fun param arg ->
      match param, arg with
      | RefParam (name, _), RefVal r -> add_to_env local_env name (RefVal r, Reference) true
      | RefParam (_, _), _ -> failwith "Expected a reference argument"
      | SimpleParam (_, _), RefVal _ -> failwith "Expected a non-reference argument"
      | SimpleParam (name, _), arg -> add_to_env local_env name (arg, Mutable) true
  ) func.params arg_vals;
  let result = exec_block local_env func.body in
  ignore(pop_scope local_env);
  if type_of (Some result) = (match func.return_type with
    | Some t -> t
    | None -> "unit") then result
  else failwith "Return type mismatch"

and exec_block (env: env) (block: block) : var =
  (* Push a new scope onto the environment stack *)
  let extended_env = push_scope env in
  let result =
    match block with
    | [] -> UnitVal (* Empty block returns unit *)
    | _ ->
        (* Evaluate each statement in the block *)
        List.fold_left
          (fun _ stmt -> match exec_stmt extended_env stmt with
            | Some v -> v
            | None -> UnitVal)
          UnitVal
          block
  in
  (* Pop the block's scope after execution *)
  ignore (pop_scope extended_env);
  result

  
    
let exec_program (Program stmts : program) : var =
  let env = push_scope [] in
  initialize_builtins env;
  (* Execute all top-level statements, including function definitions *)
  List.iter (fun stmt -> ignore (exec_stmt env stmt)) stmts;
  (* Find and execute the main function *)
  match find_in_env env "main" with
  | (FuncVal main, Function) -> call_function env main []
  | _ -> failwith "main function not defined or invalid"