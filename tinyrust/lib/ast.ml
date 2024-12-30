(* Identifier and Types *)
type identifier = string

type var_type =
  | Mutable
  | Immutable
  | Reference
  | Unit
  | Function of string option  (* Optional return type *)

type param =
  | RefParam of identifier * string (* Reference parameter with type *)
  | SimpleParam of identifier * string (* Simple parameter with type *)

(* Expressions *)
type expr =
  | Int of int                               (* Integer literals *)
  | String of string                         (* String literals *)
  | Var of identifier                        (* Variable access *)
  | FunctionCall of identifier * expr list   (* Function call, e.g., foo(x) *)
  | MethodCall of expr * identifier * expr list (* Method call, e.g., obj.method(args) *)
  | NamespaceCall of identifier * identifier * expr list (* Namespace, e.g., String::from(x) *)
  | BinaryOp of string * expr * expr         (* Binary operators, e.g., x + y *)
  | UnaryOp of string * expr                 (* Unary operators, e.g., -x *)
  | Array of expr list                       (* Array literals *)

(* Statements *)
type stmt =
  | Let of identifier * expr * bool          (* Let binding, with mutability flag *)
  | Assign of identifier * expr              (* Assignment, e.g., x = y *)
  | If of expr * block * block option        (* If statement with optional else *)
  | Loop of block                            (* Infinite loop *)
  | Break                                    (* Break statement *)
  | Expr of expr                             (* Standalone expression as a statement *)
  | ExprBlock of block                       (* Block treated as an expression *)
  | FunctionDef of func                      (* Function definition *)
  | ErrorStmt                                (* Error placeholder *)

(* Block: A sequence of statements *)
and block = stmt list

(* Function Definition *)
and func = {
  name : identifier;                         (* Function name *)
  params : param list;                       (* Parameters *)
  body : block;                              (* Function body *)
  return_type : string option;               (* Optional return type *)
}

(* Variable Values *)
and var =
  | IntVal of int
  | StringVal of string
  | ArrayVal of var list
  | RefVal of var
  | UnitVal
  | FuncVal of func

(* Program: Entry point *)
type program = Program of stmt list

type variable = var * var_type
(* Environment: A stack of scopes *)
type env = (identifier, var) Hashtbl.t list
