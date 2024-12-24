open Ast


let built_in_functions = Hashtbl.create 16

let initialize_builtins env =
  (* Add println! function *)
  Hashtbl.add built_in_functions "println!" (fun args ->
      match args with
      | [StringVal s] -> print_endline s; UnitVal
      | _ -> failwith "println! expects a single string argument"
    );

  (* Add String::from function *)
  Hashtbl.add built_in_functions "String::from" (fun args ->
      match args with
      | [StringVal s] -> StringVal s
      | _ -> failwith "String::from expects a single string argument"
    );

  (* Add push_str method *)
  Hashtbl.add built_in_functions "push_str" (fun args ->
    match args with
    | [StringVal name; StringVal suffix] -> (
        match Hashtbl.find_opt env name with
        | Some (Mutable ({contents = StringVal s} as r)) ->
            r := StringVal (s ^ suffix);
            UnitVal
        | Some (Immutable _) -> failwith ("Variable " ^ name ^ " is immutable")
        | Some _ -> failwith ("Variable " ^ name ^ " is not a string")
        | None -> failwith ("Variable " ^ name ^ " not found")
      )
    | _ -> failwith "push_str expects a mutable string variable and a string argument"
  )



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
  | _ -> failwith ("Unsupported binary operation: " ^ op)

(* Helper function to evaluate unary operations *)
let eval_unary_op op v =
  match (op, v) with
  | ("!", IntVal n) -> IntVal (if n = 0 then 1 else 0)
  | ("-", IntVal n) -> IntVal (-n)
  | _ -> failwith ("Unsupported unary operation: " ^ op)

(* Evaluate expressions *)
let rec eval_expr (env : env) (expr : expr) : value =
  match expr with
  | Int n -> IntVal n
  | String s -> StringVal s
  | Var name -> (
      match Hashtbl.find_opt env name with
      | Some (Immutable v) -> v
      | Some (Mutable v) -> !v
      | None -> failwith ("Variable " ^ name ^ " not found")
    )
  | FunctionCall (name, args) -> (
    let eval_args = List.map (eval_expr env) args in
    match name with
    | "println!" -> (
        match eval_args with
        | [StringVal s] -> print_endline s; UnitVal
        | _ -> failwith "println! expects a single string argument"
      )
    | _ -> failwith ("Undefined function: " ^ name)
  )

  | MethodCall (obj, method_name, args) -> (
    let obj_val = eval_expr env obj in
    let eval_args = List.map (eval_expr env) args in
    match method_name with
    | "push_str" -> (
        match obj_val with
        | StringVal s -> (
            match eval_args with
            | [StringVal suffix] -> StringVal (s ^ suffix)  (* Concatenate strings *)
            | _ -> failwith "push_str expects a single string argument"
          )
        | _ -> failwith "Method push_str called on non-string object"
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


(* Execute statements *)
let rec exec_stmt (env : env) (stmt : stmt) : unit =
  match stmt with
  | Let (name, expr, is_mutable) ->
      let value = eval_expr env expr in
      if is_mutable then
        Hashtbl.add env name (Mutable (ref value))
      else
        Hashtbl.add env name (Immutable value)
  | Assign (name, expr) ->
      let value = eval_expr env expr in
      if Hashtbl.mem env name then
        match Hashtbl.find env name with
        | Mutable v -> v := value
        | Immutable _ -> failwith ("Variable " ^ name ^ " is immutable")
      else failwith ("Variable " ^ name ^ " not found")
  | Expr expr -> ignore (eval_expr env expr)
  | If (cond, then_block, else_block) ->
      let cond_val = eval_expr env cond in
      if cond_val = IntVal 1 then exec_block env then_block
      else (
        match else_block with
        | Some block -> exec_block env block
        | None -> ()
      )
  | Loop block -> while true do exec_block env block done
  | Break -> failwith "Break outside of a loop"

(* Execute blocks *)
and exec_block (env : env) (block : block) : unit =
  List.iter (exec_stmt env) block

(* Execute a program *)
let exec_program (prog : program) : unit =
  let env = Hashtbl.create 16 in
  let main_func =
    List.find_opt (fun f -> f.name = "main") prog
    |> Option.get
  in
  exec_block env main_func.body

