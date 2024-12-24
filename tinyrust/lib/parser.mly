%{
open Ast
%}

%token FN LET MUT IF ELSE LOOP BREAK
%token <string> IDENTIFIER
%token <int> INT_LITERAL
%token <string> STRING_LITERAL

%token EQEQ NEQ LEQ GEQ ANDAND OROR LSHIFT RSHIFT ARROW // FATARROW
%token PLUSEQ MINUSEQ MULTEQ DIVEQ MODEQ ANDEQ OREQ XOREQ LSHIFTEQ RSHIFTEQ
%token PLUS MINUS STAR SLASH PERCENT AMP BAR CARET BANG EQUAL
%token LBRACE RBRACE LPAREN RPAREN LBRACKET RBRACKET SEMICOLON COMMA
%token COLON DOT DOUBLECOLON
%token EOF

%start program
%type <program> program

%left OROR
%left ANDAND
%left BAR CARET AMP
%left EQEQ NEQ
%left LSHIFT RSHIFT
%left PLUS MINUS
%left STAR SLASH PERCENT

%%

program:
  | functions EOF { $1 }

functions:
  | function_def functions { $1 :: $2 }
  | /* empty */ { [] }

function_def:
  | FN IDENTIFIER LPAREN params RPAREN block {
      { name = $2; params = $4; body = $6 }
  }
  | FN IDENTIFIER LPAREN params RPAREN ARROW IDENTIFIER block {
      { name = $2; params = $4; body = $8 }
  }

params:
  | IDENTIFIER COMMA params { $1 :: $3 }
  | IDENTIFIER { [$1] }
  | /* empty */ { [] }

block:
  | LBRACE stmts RBRACE { $2 }

stmts:
  | stmt stmts { $1 :: $2 }
  | /* empty */ { [] }

stmt:
  | LET IDENTIFIER EQUAL expr SEMICOLON { Let ($2, $4, false) }
  | LET MUT IDENTIFIER EQUAL expr SEMICOLON { Let ($3, $5, true) }
  | IDENTIFIER EQUAL expr SEMICOLON { Assign ($1, $3) }
  | IF expr block opt_else { If ($2, $3, $4) }
  | LOOP block { Loop ($2) }
  | BREAK SEMICOLON { Break }
  | expr SEMICOLON { Expr $1 }

opt_else:
  | ELSE block { Some $2 }
  | /* empty */ { None }

expr_list:
  | expr COMMA expr_list { $1 :: $3 }
  | expr { [$1] }
  | /* empty */ { [] }

expr:
  | IDENTIFIER DOUBLECOLON IDENTIFIER LPAREN expr_list RPAREN {
      FunctionCall ($1 ^ "::" ^ $3, $5)  (* Handle String::from *)
    }
  | IDENTIFIER LPAREN expr_list RPAREN { FunctionCall ($1, $3) }
  | expr DOT IDENTIFIER LPAREN expr_list RPAREN {
      MethodCall ($1, $3, $5)  (* Handle x.push_str(...) *)
    }
  | INT_LITERAL { Int $1 }
  | STRING_LITERAL { String $1 }
  | IDENTIFIER { Var $1 }
  | BANG expr { UnaryOp ("!", $2) }
  | MINUS expr %prec STAR { UnaryOp ("-", $2) }
  | expr PLUS expr { BinaryOp ("+", $1, $3) }
  | expr MINUS expr { BinaryOp ("-", $1, $3) }
  | expr STAR expr { BinaryOp ("*", $1, $3) }
  | expr SLASH expr { BinaryOp ("/", $1, $3) }
  | expr PERCENT expr { BinaryOp ("%", $1, $3) }
  | expr AMP expr { BinaryOp ("&", $1, $3) }
  | expr BAR expr { BinaryOp ("|", $1, $3) }
  | expr CARET expr { BinaryOp ("^", $1, $3) }
  | expr ANDAND expr { BinaryOp ("&&", $1, $3) }
  | expr OROR expr { BinaryOp ("||", $1, $3) }
  | expr EQEQ expr { BinaryOp ("==", $1, $3) }
  | expr NEQ expr { BinaryOp ("!=", $1, $3) }
  | expr LEQ expr { BinaryOp ("<=", $1, $3) }
  | expr GEQ expr { BinaryOp (">=", $1, $3) }
  | expr LSHIFT expr { BinaryOp ("<<", $1, $3) }
  | expr RSHIFT expr { BinaryOp (">>", $1, $3) }
  | expr PLUSEQ expr { BinaryOp ("+=", $1, $3) }
  | expr MINUSEQ expr { BinaryOp ("-=", $1, $3) }
  | expr MULTEQ expr { BinaryOp ("*=", $1, $3) }
  | expr DIVEQ expr { BinaryOp ("/=", $1, $3) }
  | expr MODEQ expr { BinaryOp ("%=", $1, $3) }
  | expr ANDEQ expr { BinaryOp ("&=", $1, $3) }
  | expr OREQ expr { BinaryOp ("|=", $1, $3) }
  | expr XOREQ expr { BinaryOp ("^=", $1, $3) }
  | expr LSHIFTEQ expr { BinaryOp ("<<=", $1, $3) }
  | expr RSHIFTEQ expr { BinaryOp (">>=", $1, $3) }
  | LBRACKET expr_list RBRACKET { Array ($2) }


