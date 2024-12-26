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
%token LSHIFT RSHIFT RSHIFTEQ MUT IF ELSE LOOP BREAK ARROW COLON


%nonassoc DOT                 (* Highest precedence for method calls and property access *)
%left OROR                    (* Logical OR *)
%left ANDAND                  (* Logical AND *)
%left BAR                     (* Bitwise OR *)
%left CARET                   (* Bitwise XOR *)
%left AMP                     (* Bitwise AND *)
%nonassoc EQEQ NEQ LEQ GEQ    (* Comparisons *)
%left LSHIFT RSHIFT           (* Bitwise shifts << and >> *)
%left PLUS MINUS              (* Addition and subtraction *)
%left STAR SLASH PERCENT      (* Multiplication, division, and modulus *)
%right BANG                   (* Logical NOT *)
%right UMINUS                 (* Unary negation (e.g., -x) *)
%right PLUSEQ MINUSEQ MULTEQ DIVEQ MODEQ ANDEQ OREQ XOREQ LSHIFTEQ RSHIFTEQ


%type <(string * string) list> params
%type <(string * string) list> non_empty_params

%type <Ast.program> program
%type <Ast.func> function_def
%type <Ast.block> block
%type <Ast.stmt list> stmts
%type <Ast.stmt> stmt
%type <Ast.func list> functions
%type <Ast.expr> expr
%type <Ast.expr list> expr_list
%type <Ast.block option> opt_else

%start program

%%

program:
  | functions EOF { print_endline "Parsed successfully!"; $1 }

functions:
  | function_def functions { $1 :: $2 }
  | /* empty */ { [] }


function_def:
  | FN IDENTIFIER LPAREN params RPAREN block {
      { name = $2; params = $4; body = $6; return_type = None }
  }
  | FN IDENTIFIER LPAREN params RPAREN ARROW IDENTIFIER block {
      { name = $2; params = $4; body = $8; return_type = Some $6 }
  }


params:
  | non_empty_params { $1 }
  | /* empty */ { [] }

non_empty_params:
  | IDENTIFIER COLON IDENTIFIER COMMA non_empty_params {
      ($1, $3) :: $5
  }
  | IDENTIFIER COLON IDENTIFIER {
      [($1, $3)]
  }



block:
  | LBRACE stmts RBRACE { $2 }
  | LBRACE RBRACE { [] }


stmts:
  | stmt { [$1] }
  | stmt stmts { $1 :: $2 }

stmt:
  | block { ExprBlock $1 }
  | LET IDENTIFIER EQUAL expr SEMICOLON { Let ($2, $4, false) }
  | LET MUT IDENTIFIER EQUAL expr SEMICOLON { Let ($3, $5, true) }
  | IDENTIFIER EQUAL expr SEMICOLON { Assign ($1, $3) }
  | IF expr block opt_else { If ($2, $3, $4) }
  | LOOP block { Loop ($2) }
  | BREAK SEMICOLON { Break }
  | expr SEMICOLON { Expr $1 }
  | error { failwith "Syntax error in statement" }  (* Abort on error *)


opt_else:
  | ELSE block { Some $2 }
  | /* empty */ { None }

expr_list:
  | expr COMMA expr_list { $1 :: $3 }
  | expr { [$1] }
  | /* empty */ { [] }

expr:
  | IDENTIFIER LPAREN expr_list RPAREN { FunctionCall ($1, $3) }
  | IDENTIFIER DOUBLECOLON IDENTIFIER LPAREN expr_list RPAREN {
    NamespaceCall ($1, $3, $5)  (* Handle String::from *)
  }
  | expr DOT IDENTIFIER LPAREN expr_list RPAREN {
      MethodCall ($1, $3, $5)  (* Handle a.push_str(...) *)
  }
  | INT_LITERAL { Int $1 }
  | STRING_LITERAL { String $1 }
  | IDENTIFIER { Var $1 }
  | BANG expr { UnaryOp ("!", $2) }
  | UMINUS expr { UnaryOp ("-", $2) }
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
