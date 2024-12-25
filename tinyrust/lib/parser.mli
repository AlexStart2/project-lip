
(* The type of tokens. *)

type token = 
  | XOREQ
  | STRING_LITERAL of (string)
  | STAR
  | SLASH
  | SEMICOLON
  | RSHIFTEQ
  | RSHIFT
  | RPAREN
  | RBRACE
  | PLUSEQ
  | PLUS
  | PERCENT
  | OROR
  | OREQ
  | NEQ
  | MUT
  | MULTEQ
  | MODEQ
  | MINUSEQ
  | MINUS
  | LSHIFTEQ
  | LSHIFT
  | LPAREN
  | LOOP
  | LET
  | LEQ
  | LBRACE
  | INT_LITERAL of (int)
  | IF
  | IDENTIFIER of (string)
  | GEQ
  | FN
  | EQUAL
  | EQEQ
  | EOF
  | ELSE
  | DOUBLECOLON
  | DOT
  | DIVEQ
  | COMMA
  | CARET
  | BREAK
  | BAR
  | BANG
  | ARROW
  | ANDEQ
  | ANDAND
  | AMP

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
