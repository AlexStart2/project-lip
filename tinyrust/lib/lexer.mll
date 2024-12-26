{
  open Parser
}

let white = [' ' '\t' '\n' '\r']+
rule tokenize = parse
  | white { tokenize lexbuf }
  | "//" [^ '\n']* '\n' { tokenize lexbuf }
  | "fn" { FN }
  | "let" { LET }
  | "mut" { MUT }
  | "if" { IF }
  | "else" { ELSE }
  | "loop" { LOOP }
  | "break" { BREAK }
  | ['a'-'z' 'A'-'Z' '_']['a'-'z' 'A'-'Z' '0'-'9' '_' '!']* as id { IDENTIFIER id }
  | ['0'-'9']+ {
      let num = Lexing.lexeme lexbuf in
      INT_LITERAL (int_of_string num)
    }
  | '"' [^ '"']* '"' {
      let str = Lexing.lexeme lexbuf in
      STRING_LITERAL (String.sub str 1 (String.length str - 2))
    }
  (* Multi-character operators *)
  | "==" { EQEQ }
  | "!=" { NEQ }
  | "<=" { LEQ }
  | ">=" { GEQ }
  | "&&" { ANDAND }
  | "||" { OROR }
  | "<<" { LSHIFT }
  | ">>" { RSHIFT }
  | "->" { ARROW }
  (* | "=>" { FATARROW } *)
  | "+=" { PLUSEQ }
  | "-=" { MINUSEQ }
  | "*=" { MULTEQ }
  | "/=" { DIVEQ }
  | "%=" { MODEQ }
  | "&=" { ANDEQ }
  | "|=" { OREQ }
  | "^=" { XOREQ }
  | "<<=" { LSHIFTEQ }
  | ">>=" { RSHIFTEQ }

(* Single-character operators *)
  | '+' { PLUS }
  | '-' { MINUS }
  | '-' + ['a'-'z' 'A'-'Z' '_']['a'-'z' 'A'-'Z' '0'-'9' '_' '!']* {UMINUS}
  | '*' { STAR }
  | '/' { SLASH }
  | '%' { PERCENT }
  | '&' { AMP }
  | '|' { BAR }
  | '^' { CARET }
  | '!' { BANG }
  | '=' { EQUAL }

  (* Delimiters *)
  | '{' { LBRACE }
  | '}' { RBRACE }
  | '(' { LPAREN }
  | ')' { RPAREN }
  | '[' { LBRACKET }
  | ']' { RBRACKET }
  | ';' { SEMICOLON }
  | ',' { COMMA }
  | "::" { DOUBLECOLON }
  | ":" { COLON }
  | "." { DOT }
  | eof { EOF }
  | _ { failwith ("Unrecognized token: '" ^ Lexing.lexeme lexbuf ^ "'") }




{
let token_to_string = function
    | FN -> "FN"
    | LET -> "LET"
    | MUT -> "MUT"
    | IF -> "IF"
    | ELSE -> "ELSE"
    | LOOP -> "LOOP"
    | BREAK -> "BREAK"
    | IDENTIFIER s -> Printf.sprintf "Identifier(%s)" s
    | INT_LITERAL i -> Printf.sprintf "IntLiteral(%d)" i 
    | STRING_LITERAL s -> Printf.sprintf "StringLiteral(%s)" s
    | EQEQ -> "EQEQ"
    | NEQ -> "NEQ"
    | LEQ -> "LEQ"
    | GEQ -> "GEQ"
    | ANDAND -> "ANDAND"
    | OROR -> "OROR"
    | LSHIFT -> "LSHIFT"
    | RSHIFT -> "RSHIFT"
    | ARROW -> "ARROW"
    (* | FATARROW -> "FATARROW" *)
    | PLUSEQ -> "PLUSEQ"
    | MINUSEQ -> "MINUSEQ"
    | MULTEQ -> "MULTEQ"
    | DIVEQ -> "DIVEQ"
    | MODEQ -> "MODEQ"
    | ANDEQ -> "ANDEQ"
    | OREQ -> "OREQ"
    | XOREQ -> "XOREQ"
    | LSHIFTEQ -> "LSHIFTEQ"
    | RSHIFTEQ -> "RSHIFTEQ"
    | PLUS -> "PLUS"
    | MINUS -> "MINUS"
    | STAR -> "STAR"
    | SLASH -> "SLASH"
    | PERCENT -> "PERCENT"
    | AMP -> "AMP"
    | BAR -> "BAR"
    | CARET -> "CARET"
    | BANG -> "BANG"
    | EQUAL -> "EQUAL"
    | LBRACE -> "Delim({)"
    | RBRACE -> "Delim(})"
    | LPAREN -> "Delim(()"
    | RPAREN -> "Delim())"
    | LBRACKET -> "Delim([)"
    | RBRACKET -> "Delim(])"
    | SEMICOLON -> "Delim(;)"
    | COMMA -> "Delim(,)"
    | COLON -> "Delim(:)"
    | DOT -> "Delim(.)"
    | DOUBLECOLON -> "Delim(::)"
    | UMINUS -> "UMINUS"
    | EOF -> "EOF"
}