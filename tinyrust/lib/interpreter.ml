open Ast

(* Define a custom exception for breaking out of loops *)
exception BreakException

let built_in_functions = Hashtbl.create 16

(* Find a variable in the environment stack *)
let rec find_in_env (env:env) (name: string) : var =
  match env with
  | [] -> failwith ("Variable " ^ name ^ " not found")
  | scope :: rest ->
      if Hashtbl.mem scope name then Hashtbl.find scope name
      else find_in_env rest name

let rec string_of_expr = function
| Int n -> string_of_int n
| String s -> s
| Var name -> name
| NamespaceCall (namespace, func_name, _) -> namespace ^ "::" ^ func_name
| FunctionCall (name, _) -> name
| MethodCall (_, method_name, _) -> method_name
| BinaryOp (op, _, _) -> op
| UnaryOp (op, _) -> op
| Array elements -> "[" ^ String.concat ", " (List.map string_of_expr elements) ^ "]"


(* let print_env env = (* print scopes sepparately *)
  List.iter (fun scope -> 
    Hashtbl.iter (fun key value -> Printf.printf "%s -> %s\n" key (match value with
      | Mutable false -> (match a with 
        | IntVal _ -> "IM Int"
        | StringVal _ -> "IM String"
        | ArrayVal _ -> "IM Array"
        | UnitVal -> "IM Unit"
        | RefVal _ -> "IM Ref"
        | FuncVal f -> Printf.sprintf "IM Func %s %s"  f.name (Option.value ~default:"" f.return_type))
      | Mutable true -> "Mutable"
    )) scope ; Printf.printf "----\n"
  ) env *)

let add_or_change_var_in_env (env:env) (name: string) (varT: varType) value : unit =
  let current_scope = List.hd env in
  let var = match value with
    | IntVal (n,_) -> IntVal (n,varT)
    | StringVal (s,_) -> StringVal (s,varT)
    | ArrayVal (a,_) -> ArrayVal (a,varT)
    | RefVal (r,_) -> RefVal (r,varT)
    | UnitVal _ -> UnitVal varT
    | FuncVal (f,_) -> FuncVal (f,varT)
  in
  if Hashtbl.mem current_scope name then
    Hashtbl.replace current_scope name var
  else
    Hashtbl.add current_scope name var
    

let rec val_to_string v var_name = match v with
  | IntVal (n,_) -> string_of_int n
  | StringVal (s,_)-> s
  | ArrayVal _ -> failwith ("Variable " ^ var_name ^ " is of type Array")
  | RefVal (r,_) -> val_to_string r var_name
  | UnitVal _ -> failwith ("Variable " ^ var_name ^ " is of type Unit")
  | FuncVal _ -> failwith ("Variable " ^ var_name ^ " is of type Function")

let rec ref_val_to_val r = match r with
  | RefVal (r,_) -> ref_val_to_val r
  | v -> v

(* Initialize built-in functions *)
(* Update println! to accept the current environment *)
let initialize_builtins _ = 
  Hashtbl.add built_in_functions "println!" (fun args env ->
      match args with
      | [StringVal(value, _ )] -> 
        (* print_env env; *)
          let interpolated = 
            Str.global_substitute (Str.regexp "{[a-zA-Z_][a-zA-Z0-9_]*}")
              (fun matched ->
                let var_name = String.sub (Str.matched_string matched) 1 
                               (String.length (Str.matched_string matched) - 2) in
                let v = find_in_env env var_name in
                (val_to_string v var_name)
              ) 
              value
          in
          print_endline interpolated; 
          UnitVal Unit  (* Return UnitVal instead of nothing *)
      | _ -> failwith "println! expects a single string argument"
    )

(* Evaluate expressions *)

(* Helper function to evaluate binary operations *)
let eval_binary_op op lhs rhs =
  match (op, lhs, rhs) with
  | ("+", IntVal (l,_), IntVal (r,_)) -> IntVal ((l + r),Immediate)
  | ("-", IntVal (l,_), IntVal (r,_)) -> IntVal ((l - r),Immediate)
  | ("*", IntVal (l,_), IntVal (r,_)) -> IntVal ((l * r),Immediate)
  | ("/", IntVal (l,_), IntVal (r,_)) -> IntVal ((l / r),Immediate)
  | ("%", IntVal (l,_), IntVal (r,_)) -> IntVal ((l mod r),Immediate)
  | ("==", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l = r then 1 else 0),Immediate)
  | ("!=", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l <> r then 1 else 0),Immediate)
  | ("&&", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l <> 0 && r <> 0 then 1 else 0),Immediate)
  | ("||", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l <> 0 || r <> 0 then 1 else 0),Immediate)
  | ("&", IntVal (l,_), IntVal (r,_)) -> IntVal ((l land r),Immediate)
  | ("|", IntVal (l,_), IntVal (r,_)) -> IntVal ((l lor r),Immediate)
  | ("^", IntVal (l,_), IntVal (r,_)) -> IntVal ((l lxor r),Immediate)
  | ("<<", IntVal (l,_), IntVal (r,_)) -> IntVal ((l lsl r),Immediate)
  | (">>", IntVal (l,_), IntVal (r,_)) -> IntVal ((l asr r),Immediate)
  | ("<", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l < r then 1 else 0),Immediate)
  | ("<=", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l <= r then 1 else 0),Immediate)
  | (">", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l > r then 1 else 0),Immediate)
  | (">=", IntVal (l,_), IntVal (r,_)) -> IntVal ((if l >= r then 1 else 0),Immediate)
  | _ -> failwith ("Unsupported binary operation: " ^ op)




let find_function_in_env env name =
  try
    let x = find_in_env env name in
      match x with
      | FuncVal (f,_) -> Some f
      | _ -> None
  with 
  | Failure _ -> None

let find_function_in_build_in name args env =
  match Hashtbl.find_opt built_in_functions name with
  | Some f -> Some (f args env)
  | None -> None

(* Evaluate expressions *)
let rec eval_expr (env : env) (expr : expr) : var =
  (* print_endline ("Evaluating expression: " ^ string_of_expr expr); *)
  match expr with
  | Int n -> IntVal (n, Immediate)
  | String s -> StringVal (s, Immediate)
  | Var name -> find_in_env env name
  | Array elements -> (
    let values = List.map (eval_expr env) elements in
    ArrayVal (values, Immediate)
  )

  | NamespaceCall (namespace, func_name, args) -> (
    let eval_args = List.map (eval_expr env) args in
    match (namespace, func_name) with
    | ("String", "from") -> (
        match eval_args with
        | [StringVal(s, Immediate)] -> StringVal (s, Immediate)
        | _ -> failwith "String::from expects a single string argument"
      )
    | _ -> failwith ("Undefined function: " ^ namespace ^ "::" ^ func_name)
  )
  
  | FunctionCall (name, args) -> (
    let eval_args = List.map (eval_expr env) args in
    match find_function_in_env env name with
    | Some func -> (
        let new_scope = Hashtbl.create 16 in
        let extended_env = new_scope :: env in
        List.iter2
        (fun (param_name, _ ) arg_val -> Hashtbl.add new_scope param_name arg_val)
         func.params  eval_args;
        exec_block extended_env func.body
      )
    | None -> (
        match find_function_in_build_in name eval_args env with
        | Some f -> f
        | None -> failwith ("Undefined function: " ^ name)
      )
  )

  | MethodCall (obj, method_name, args) -> (
    match obj with
      | Var name -> let v = find_in_env env name in
        ( match v with
          | StringVal(string, Mutable) -> (
            let eval_args = List.map (eval_expr env) args in
              match method_name with
              | "push_str" -> (
                match eval_args with
                | [StringVal (suffix, Immediate)] -> Hashtbl.replace (List.hd env) name (StringVal (string ^ suffix, Mutable)); UnitVal Unit
                | _ -> failwith "push_str expects a single string argument")
              | _ -> failwith ("Undefined method: " ^ method_name)
            )
            | StringVal(_, Immutable) -> failwith "Cannot call method push_str on immutable strings"
            | _ -> failwith "Method call must be called on a variable of type string"
          )
      | _ -> failwith "Method call must be called on a variable"
      )

  | BinaryOp (op, lhs, rhs) ->
      let lval = eval_expr env lhs in
      let rval = eval_expr env rhs in
      eval_binary_op op lval rval
  | UnaryOp (op, e) ->
      eval_unary_op op e env


and eval_unary_op op e env =
  let v = eval_expr env e in
  match (op, v) with
  | ("!", IntVal (n,_)) -> IntVal ((if n = 0 then 1 else 0), Immediate)
  | ("-", IntVal (n,_)) -> IntVal (-n, Immediate)
  | ("&", v) -> RefVal (v, Reference);
  | _ -> failwith ("Unsupported unary operation: " ^ op)


and exec_stmt (env : env) (stmt : stmt) : var =
  match stmt with
  | Let (name, expr, is_mutable) ->
    let value = eval_expr env expr in
    (match is_mutable with
    | true -> add_or_change_var_in_env env name Mutable value; UnitVal Unit
    | false -> add_or_change_var_in_env env name Immutable value; UnitVal Unit)
  | Assign (name, expr) ->
    Printf.printf "Assigning to %s\n" name;
    let value = eval_expr env expr in
    let rec assign_in_env env name value =
      match env with
      | [] -> failwith ("Variable " ^ name ^ " not found")
      | scope :: rest ->
          if Hashtbl.mem scope name then
            match Hashtbl.find scope name with
            | IntVal (_, Mutable) -> add_or_change_var_in_env env name Mutable value
            | StringVal (_, Mutable) -> add_or_change_var_in_env env name Mutable value
            | ArrayVal (_, Mutable) -> add_or_change_var_in_env env name Mutable value
            | RefVal (_, Mutable) -> add_or_change_var_in_env env name Mutable value
            | _ -> failwith ("Cannot assign to immutable variable: " ^ name)
          else
            assign_in_env rest name value
    in
    assign_in_env env name value; UnitVal Unit
    
  | Expr expr -> eval_expr env expr
  | If (cond, then_block, else_block) ->
      (match eval_expr env cond with
      | IntVal (cond_val, _) -> if cond_val = 1 then exec_block env then_block
          else ( match else_block with
            | Some block -> exec_block env block
            | None -> (); UnitVal Unit) 
      | _ -> failwith "Condition must be an integer")
      
  | Break -> raise BreakException
  | Loop block -> (
      try
        while true do ignore(exec_block env block) done
      with BreakException -> (); UnitVal Unit
  )
  | ExprBlock block -> exec_block env block
  | FunctionDef func ->
    let current_scope = List.hd env in
    Hashtbl.add current_scope func.name (FuncVal (func, Function)); UnitVal Unit
  | ErrorStmt -> failwith "Error statement"

and exec_block (env : env) (block : block) : var =
  let new_scope = Hashtbl.create 16 in
  (* Extend the environment stack with the new scope *)
  let extended_env = new_scope :: env in
  match block with
  | [] -> UnitVal Unit  (* An empty block returns a unit value *)
  | _ -> 
      (* Execute all statements, return the result of the last one *)
      List.fold_left
        (fun _ stmt -> exec_stmt extended_env stmt)
        (UnitVal Unit) block



(* Execute a program *)
let exec_program (Program stmts : program) : var =
  let env = [Hashtbl.create 16] in
  initialize_builtins env;
  (* Execute all top-level statements, including function definitions *)
  List.iter (fun stmt -> ignore (exec_stmt env stmt)) stmts;
  (* Find and execute the main function *)
  match find_in_env env "main" with
  | FuncVal (main_func, Function) -> exec_block env main_func.body
  | _ -> failwith "main function not defined or invalid"


