%{
open Ast
%}

%token <string> IDENTIFIER
%token <int> INT_LITERAL
%token <string> STRING_LITERAL

%token FN LET LBRACE RBRACE EQUAL SEMICOLON EOF
%token LPAREN RPAREN COMMA PLUS DOT DOUBLECOLON
%token MINUS UMINUS STAR SLASH PERCENT AMP BAR CARET ANDAND OROR EQEQ NEQ LEQ GEQ BANG
%token LBRACKET RBRACKET ANDEQ OREQ XOREQ LSHIFTEQ MODEQ PLUSEQ MINUSEQ MULTEQ DIVEQ
%token LSHIFT RSHIFT RSHIFTEQ MUT IF ELSE LOOP BREAK ARROW COLON REF

%nonassoc DOT                 (* Highest precedence for method calls and property access *)
%left OROR                    (* Logical OR *)
%left ANDAND                  (* Logical AND *)
%left BAR                     (* Bitwise OR *)
%left CARET                   (* Bitwise XOR *)
%left AMP                     (* Bitwise AND *)
%nonassoc EQEQ NEQ LEQ GEQ    (* Comparisons *)
%left LSHIFT RSHIFT           (* Bitwise shifts << and >> *)
%right UMINUS REF
%left PLUS MINUS              (* Addition and subtraction *)
%left STAR SLASH PERCENT      (* Multiplication, division, and modulus *)
%nonassoc BANG
%right PLUSEQ MINUSEQ MULTEQ DIVEQ MODEQ ANDEQ OREQ XOREQ LSHIFTEQ RSHIFTEQ

%type <Ast.program> program
%type <Ast.block> block
%type <Ast.stmt list> stmts
%type <Ast.stmt> stmt
%type <Ast.expr> expr
%type <Ast.expr list> expr_list
%type <Ast.block option> opt_else
%type <Ast.param list> params
// %type <Ast.param_type> param_type

%start program

%%

(* Entry point for the program *)
program:
  | stmts EOF { Program $1 }

(* Function parameters *)
params:
  | IDENTIFIER COLON AMP IDENTIFIER COMMA params { RefParam ($1, $4) :: $6 }
  | IDENTIFIER COLON AMP IDENTIFIER { [RefParam ($1, $4)] }
  | IDENTIFIER COLON IDENTIFIER COMMA params { SimpleParam ($1, $3) :: $5 }
  | IDENTIFIER COLON IDENTIFIER { [SimpleParam ($1, $3)] }
  | /* empty */ { [] }


(* Block: sequence of statements or trailing expression *)
block:
  | LBRACE stmts RBRACE SEMICOLON { $2 }
  | LBRACE stmts RBRACE { $2 }
  | LBRACE RBRACE { [] }


stmts:
  | stmt stmts { $1 :: $2 }
  | expr { [Expr $1] }
  | stmt { [$1] }


stmt:
  | LET IDENTIFIER EQUAL expr SEMICOLON { Let ($2, $4, false) }
  | LET MUT IDENTIFIER EQUAL expr SEMICOLON { Let ($3, $5, true) }
  | IDENTIFIER EQUAL expr SEMICOLON { Assign ($1, $3) }
  | IF expr block opt_else { If ($2, $3, $4) }
  | LOOP block { Loop ($2) }
  | BREAK SEMICOLON { Break }
  | FN IDENTIFIER LPAREN params RPAREN block {
      FunctionDef { name = $2; params = $4; body = $6; return_type = None }
  }
  | FN IDENTIFIER LPAREN params RPAREN ARROW IDENTIFIER block {
      FunctionDef { name = $2; params = $4; body = $8; return_type = Some $7 }
  }
  | expr SEMICOLON { Expr $1 }
  | expr { Expr $1 }
  | error { failwith "Syntax error in statement" }

(* Optional else block *)
opt_else:
  | ELSE block { Some $2 }
  | /* empty */ { None }

(* Expression lists *)
expr_list:
  | expr COMMA expr_list { $1 :: $3 }
  | expr { [$1] }
  | /* empty */ { [] }

(* Expressions *)
expr:
  | IDENTIFIER LPAREN expr_list RPAREN { FunctionCall ($1, $3) }
  | IDENTIFIER DOUBLECOLON IDENTIFIER LPAREN expr_list RPAREN {
      NamespaceCall ($1, $3, $5)
    }
  | expr DOT IDENTIFIER LPAREN expr_list RPAREN {
      MethodCall ($1, $3, $5)
    }
  | BANG expr { UnaryOp ("!", $2) }
  | MINUS expr %prec UMINUS { UnaryOp ("-", $2) }
  | AMP expr %prec REF { UnaryOp ("&", $2) }
  | AMP MUT expr %prec REF { UnaryOp ("&mut", $3) }
  | INT_LITERAL { Int $1 }
  | STRING_LITERAL { String $1 }
  | IDENTIFIER { Var $1 }
  | LBRACE stmts RBRACE { BlockExpr $2 }
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
  | LBRACKET expr_list RBRACKET { Array $2 }
