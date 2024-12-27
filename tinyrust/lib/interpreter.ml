open Ast

(* Define a custom exception for breaking out of loops *)
exception BreakException

let built_in_functions = Hashtbl.create 16

(* Find a variable in the environment stack *)
let rec find_in_env env name =
  match env with
  | [] -> failwith ("Variable " ^ name ^ " not found")
  | scope :: rest ->
      if Hashtbl.mem scope name then Hashtbl.find scope name
      else find_in_env rest name


let print_env env = (* print scopes sepparately *)
  List.iter (fun scope -> 
    Hashtbl.iter (fun key value -> Printf.printf "%s -> %s\n" key (match value with
      | Immutable a -> (match a with 
        | IntVal _ -> "IM Int"
        | StringVal _ -> "IM String"
        | ArrayVal _ -> "IM Array"
        | UnitVal -> "IM Unit"
        | RefVal _ -> "IM Ref"
        | FuncVal f -> Printf.sprintf "IM Func %s %s"  f.name (Option.value ~default:"" f.return_type))
      | Mutable _ -> "Mutable"
    )) scope ; Printf.printf "----\n"
  ) env

(* Initialize built-in functions *)
(* Update println! to accept the current environment *)
let initialize_builtins _ = 
  Hashtbl.add built_in_functions "println!" (fun args env ->
      match args with
      | [StringVal s] -> 
        (* print_env env; *)
          (* Interpolate variables in the string *)
          let interpolated = 
            Str.global_substitute (Str.regexp "{[a-zA-Z_][a-zA-Z0-9_]*}")
              (fun matched ->
                let var_name = String.sub (Str.matched_string matched) 1 
                               (String.length (Str.matched_string matched) - 2) in
                (* Use find_in_env to resolve variable *)
                match find_in_env env var_name with
                | Immutable (IntVal v) -> string_of_int v
                | Immutable (StringVal v) -> v
                | Immutable (RefVal r) -> (
                    match r with
                    | IntVal v -> string_of_int v
                    | StringVal v -> v
                    | _ -> failwith ("Unsupported type for variable: " ^ var_name)
                  )
                | Mutable r -> (
                    match !r with
                    | IntVal v -> string_of_int v
                    | StringVal v -> v
                    | _ -> failwith ("Unsupported type for variable: " ^ var_name)
                  )
                | Immutable UnitVal  -> failwith ("Variable " ^ var_name ^ " is of type Unit")
                | _ -> failwith ("Variable " ^ var_name ^ " not found 2")
              ) 
              s 
          in
          print_endline interpolated; 
          UnitVal  (* Return UnitVal instead of nothing *)
      | _ -> failwith "println! expects a single string argument"
    )

(* Evaluate expressions *)

(* Helper function to evaluate binary operations *)
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

(* Helper function to evaluate unary operations *)
let eval_unary_op op v =
  match (op, v) with
  | ("!", IntVal n) -> IntVal (if n = 0 then 1 else 0)
  | ("-", IntVal n) -> IntVal (-n)
  | ("&", _) -> RefVal v  (* Create a reference to the value *)
  | _ -> failwith ("Unsupported unary operation: " ^ op)




let find_function_in_env env name =
  try
    match find_in_env env name with
    | Immutable (FuncVal func) -> Some (FuncVal func)
    | _ -> None
  with 
  | Failure _ -> None

let find_function_in_build_in name args env =
  match Hashtbl.find_opt built_in_functions name with
  | Some f -> Some (f args env)
  | None -> None

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

(* Evaluate expressions *)
let rec eval_expr (env : env) (expr : expr) : value =
  (* print_endline ("Evaluating expression: " ^ string_of_expr expr); *)
  match expr with
  | Int n -> IntVal n
  | String s -> StringVal s
  | Var name -> (
    match find_in_env env name with
    | Immutable v -> v
    | Mutable r -> !r
  )
  | NamespaceCall (namespace, func_name, args) -> (
    let eval_args = List.map (eval_expr env) args in
    match (namespace, func_name) with
    | ("String", "from") -> (
        match eval_args with
        | [StringVal s] -> StringVal s
        | _ -> failwith "String::from expects a single string argument"
      )
    | _ -> failwith ("Undefined function: " ^ namespace ^ "::" ^ func_name)
  )
  
  | FunctionCall (name, args) -> (
    let eval_args = List.map (eval_expr env) args in
    match find_function_in_env env name with
    | Some (FuncVal func) -> (
        let new_scope = Hashtbl.create 16 in
        let extended_env = new_scope :: env in
        List.iter2
          (fun (param_name, _) arg_val ->
            Hashtbl.add new_scope param_name (Immutable arg_val))
          func.params eval_args;
        exec_block extended_env func.body
      )
    | None -> (
        match find_function_in_build_in name eval_args env with
        | Some f -> f
        | None -> failwith ("Undefined function: " ^ name)
      )
    | _ -> failwith ("Undefined function: " ^ name)
  )

  (* | FunctionCall (name, args) ->
    let func =
      match find_in_env env name with
      | Immutable (FuncVal f) -> f
      | _ -> failwith ("Undefined function: " ^ name)
    in
    (* Create a new scope for the function *)
    let func_env = Hashtbl.create 16 in
    let new_env = func_env :: env in
    (* Bind arguments to parameters *)
    List.iter2
      (fun (param_name, _) arg_expr ->
        let value = eval_expr env arg_expr in
        Hashtbl.add func_env param_name (Immutable value))
      func.params args;
    (* Execute the function body *)
    exec_block new_env func.body
 *)

  | MethodCall (obj, method_name, args) -> (
    let obj_val = eval_expr env obj in
    let _ = List.map (eval_expr env) args in
    match (obj_val, method_name) with
    | (s, "push_str") -> (
      let text = match s with
        | StringVal s -> s
        | RefVal (StringVal s) -> s
        | _ -> failwith "push_str must be called on a string"
      in
        match args with
        | [String suffix] -> (
            match obj with
            | Var var_name -> (
              match find_in_env env var_name with
                | Mutable r -> r := StringVal (text ^ suffix); UnitVal
                | Immutable _ -> failwith ("Variable " ^ var_name ^ " is immutable")
                | exception Not_found -> failwith ("Variable " ^ var_name ^ " not found")              
              )
            | _ -> failwith "push_str must be called on a variable"
          )
        | _ -> failwith "push_str expects a single string argument"
      )
    | _ -> failwith ("Undefined method: " ^ method_name)
  )

  | BinaryOp (op, lhs, rhs) ->
      let lval = eval_expr env lhs in
      let rval = eval_expr env rhs in
      eval_binary_op op lval rval
  | UnaryOp (op, e) ->
      let v = eval_expr env e in
      eval_unary_op op v
  | Array elements ->
      let values = List.map (eval_expr env) elements in
      ArrayVal values


and exec_stmt (env : env) (stmt : stmt) : value =
  match stmt with
  | Let (name, expr, is_mutable) ->
    let value = eval_expr env expr in
    let current_scope = List.hd env in
    if Hashtbl.mem current_scope name then
      match is_mutable with
      | true -> Hashtbl.replace current_scope name (Mutable (ref value)); UnitVal
      | false -> Hashtbl.replace current_scope name (Immutable value); UnitVal
    else if is_mutable then
      (Hashtbl.add current_scope name (Mutable (ref value)); UnitVal)
    else
      (Hashtbl.add current_scope name (Immutable value); UnitVal)
      
  | Assign (name, expr) ->
    let value = eval_expr env expr in
    let rec assign_in_env env name value =
      match env with
      | [] -> failwith ("Variable " ^ name ^ " not found")
      | scope :: rest ->
          if Hashtbl.mem scope name then
            match Hashtbl.find scope name with
            | Mutable r -> r := value
            | Immutable _ -> failwith ("Variable " ^ name ^ " is immutable")
          else
            assign_in_env rest name value
    in
    assign_in_env env name value; UnitVal
    
  | Expr expr -> eval_expr env expr
  | If (cond, then_block, else_block) ->
      let cond_val = eval_expr env cond in
      if cond_val = IntVal 1 then exec_block env then_block
      else (
        match else_block with
        | Some block -> exec_block env block
        | None -> (); UnitVal
      )
  | Break -> raise BreakException
  | Loop block -> (
      try
        while true do ignore(exec_block env block) done
      with BreakException -> (); UnitVal
  )
  | ExprBlock block -> exec_block env block
  | FunctionDef func ->
    let current_scope = List.hd env in
    Hashtbl.add current_scope func.name (Immutable (FuncVal func)); UnitVal
  | ErrorStmt -> failwith "Error statement"

and exec_block (env : env) (block : block) : value =
  let new_scope = Hashtbl.create 16 in
  (* Extend the environment stack with the new scope *)
  let extended_env = new_scope :: env in
  match block with
  | [] -> UnitVal  (* An empty block returns a unit value *)
  | _ -> 
      (* Execute all statements, return the result of the last one *)
      List.fold_left
        (fun _ stmt -> exec_stmt extended_env stmt)
        UnitVal block



(* Execute a program *)
let exec_program (Program stmts : program) : value =
  let env = [Hashtbl.create 16] in
  initialize_builtins env;
  (* Execute all top-level statements, including function definitions *)
  List.iter (fun stmt -> ignore (exec_stmt env stmt)) stmts;
  (* Find and execute the main function *)
  match find_in_env env "main" with
  | Immutable (FuncVal main_func) -> exec_block env main_func.body
  | _ -> failwith "main function not defined or invalid"


