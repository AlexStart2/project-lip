(* Tokens are already defined in lexer.mll and parser.mly *)
type identifier = string

(* Expressions *)
type expr =
  | Int of int
  | String of string
  | Var of identifier
  | FunctionCall of string * expr list  (* e.g., println!("text") *)
  | MethodCall of expr * string * expr list
  | NamespaceCall of string * string * expr list
  | BinaryOp of string * expr * expr  (* e.g., x + y *)
  | UnaryOp of string * expr          (* e.g., -x *)
  | Array of expr list

(* Statements *)
type stmt =
  | Let of identifier * expr * bool  (* bool indicates mutability *)
  | Assign of identifier * expr       (* x = 42; *)
  | If of expr * block * block option (* if x { ... } else { ... } *)
  | Loop of block                     (* loop { ... } *)
  | Break                             (* break; *)
  | Expr of expr                      (* Standalone expression *)
  | ExprBlock of block
  | FunctionDef of func
  | ErrorStmt                         (* Error statement *)

(* Blocks *)
and block = stmt list                 (* { stmt1; stmt2; ... } *)


and func = {
  name : identifier;
  params : (identifier * string) list; (* List of parameter names with types *)
  body : block;
  return_type : string option; (* Optional return type *)
}

(* Program *)
type program = Program of stmt list


type value =
  | IntVal of int
  | StringVal of string
  | ArrayVal of value list
  | RefVal of value
  | UnitVal
  | FuncVal of func

type variable =
  | Immutable of value
  | Mutable of value ref

type env = (string, variable) Hashtbl.t list
