(* Tokens are already defined in lexer.mll and parser.mly *)
type identifier = string

(* Expressions *)
type expr =
  | Int of int
  | String of string
  | Var of identifier
  | FunctionCall of string * expr list  (* e.g., println!("text") *)
  | MethodCall of expr * string * expr list
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

(* Blocks *)
and block = stmt list                 (* { stmt1; stmt2; ... } *)

(* Functions *)
type func = {
  name : identifier;
  params : identifier list;
  body : block;
}

(* Program *)
type program = func list


type value =
  | IntVal of int
  | StringVal of string
  | ArrayVal of value list
  | UnitVal

type variable =
  | Immutable of value
  | Mutable of value ref

type env = (string, variable) Hashtbl.t
