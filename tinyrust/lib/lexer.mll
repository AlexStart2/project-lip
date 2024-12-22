{
  open Parser
}

let white = [' ' '\t' '\n']+

rule tokenize = parse
  | white { tokenize lexbuf }
  | "//" [^ '\n']* '\n' { tokenize lexbuf }
  | ['a'-'z' 'A'-'Z' '_']['a'-'z' 'A'-'Z' '0'-'9' '_']* {
      let id = Lexing.lexeme lexbuf in
      if List.mem id ["fn"; "let"; "mut"; "if"; "else"; "loop"; "break"]
      then KEYWORD id else IDENTIFIER id
    }
  | ['0'-'9']+ {
      let num = Lexing.lexeme lexbuf in
      INT_LITERAL (int_of_string num)
    }
  | '"' [^ '"']* '"' {
      let str = Lexing.lexeme lexbuf in
      STRING_LITERAL (String.sub str 1 (String.length str - 2))
    }
  | ['+' '-' '*' '/' '=' '%'] as op {
      OPERATOR (String.make 1 op)
    }
  | ['{' '}' '(' ')' ';' ','] as delim {
      DELIMITER delim
    }
  | eof { EOF }
  | _ { failwith "Unrecognized token" }

{
let token_to_string = function
    | KEYWORD s -> Printf.sprintf "Keyword(%s)" s
    | IDENTIFIER s -> Printf.sprintf "Identifier(%s)" s
    | INT_LITERAL i -> Printf.sprintf "IntLiteral(%d)" i 
    | STRING_LITERAL s -> Printf.sprintf "StringLiteral(%s)" s
    | OPERATOR s -> Printf.sprintf "Operator(%s)" s
    | DELIMITER c -> Printf.sprintf "Delimiter(%c)" c
    | EOF -> "EOF"
}