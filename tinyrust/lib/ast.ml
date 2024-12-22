(* Token definitions *)
type token =
  | Keyword of string
  | Identifier of string
  | IntLiteral of int
  | StringLiteral of string
  | Operator of string
  | Delimiter of char
  | Comment
  | EOF

(* Abstract Syntax Tree (AST) will be defined later as we build the parser *)

let to_string = function
  | Keyword s -> Printf.sprintf "Keyword(%s)" s
  | Identifier s -> Printf.sprintf "Identifier(%s)" s
  | IntLiteral i -> Printf.sprintf "IntLiteral(%d)" i 
  | StringLiteral s -> Printf.sprintf "StringLiteral(%s)" s
  | Operator s -> Printf.sprintf "Operator(%s)" s
  | Delimiter c -> Printf.sprintf "Delimiter(%c)" c
  | Comment -> "Comment"
  | EOF -> "EOF"
  