%{

%}

%token <string> KEYWORD
%token <string> IDENTIFIER
%token <int> INT_LITERAL
%token <string> STRING_LITERAL
%token <string> OPERATOR
%token <char> DELIMITER
%token EOF

%start main
%type <unit> main

%%

main:
  | statement EOF { () }

statement:
  | KEYWORD IDENTIFIER DELIMITER { () }
  | IDENTIFIER OPERATOR INT_LITERAL { () }
  | STRING_LITERAL { () }

