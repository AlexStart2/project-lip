
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | XOREQ
    | UMINUS
    | STRING_LITERAL of (
# 7 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | STAR
    | SLASH
    | SEMICOLON
    | RSHIFTEQ
    | RSHIFT
    | RPAREN
    | REF
    | RBRACKET
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
    | LBRACKET
    | LBRACE
    | INT_LITERAL of (
# 6 "parser.mly"
       (int)
# 50 "parser.ml"
  )
    | IF
    | IDENTIFIER of (
# 5 "parser.mly"
       (string)
# 56 "parser.ml"
  )
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
    | COLON
    | CARET
    | BREAK
    | BAR
    | BANG
    | ARROW
    | ANDEQ
    | ANDAND
    | AMP
  
end

include MenhirBasics

# 1 "parser.mly"
  
open Ast

# 86 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_program) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: program. *)

  | MenhirState003 : (('s, _menhir_box_program) _menhir_cell1_REF, _menhir_box_program) _menhir_state
    (** State 003.
        Stack shape : REF.
        Start symbol: program. *)

  | MenhirState004 : (('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 004.
        Stack shape : MINUS.
        Start symbol: program. *)

  | MenhirState005 : (('s, _menhir_box_program) _menhir_cell1_LBRACKET, _menhir_box_program) _menhir_state
    (** State 005.
        Stack shape : LBRACKET.
        Start symbol: program. *)

  | MenhirState007 : (('s, _menhir_box_program) _menhir_cell1_REF, _menhir_box_program) _menhir_state
    (** State 007.
        Stack shape : REF.
        Start symbol: program. *)

  | MenhirState008 : (('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 008.
        Stack shape : MINUS.
        Start symbol: program. *)

  | MenhirState009 : (('s, _menhir_box_program) _menhir_cell1_LBRACKET, _menhir_box_program) _menhir_state
    (** State 009.
        Stack shape : LBRACKET.
        Start symbol: program. *)

  | MenhirState012 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 012.
        Stack shape : IDENTIFIER.
        Start symbol: program. *)

  | MenhirState013 : (('s, _menhir_box_program) _menhir_cell1_BANG, _menhir_box_program) _menhir_state
    (** State 013.
        Stack shape : BANG.
        Start symbol: program. *)

  | MenhirState014 : ((('s, _menhir_box_program) _menhir_cell1_BANG, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 014.
        Stack shape : BANG expr.
        Start symbol: program. *)

  | MenhirState015 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ, _menhir_box_program) _menhir_state
    (** State 015.
        Stack shape : expr XOREQ.
        Start symbol: program. *)

  | MenhirState016 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 016.
        Stack shape : expr XOREQ expr.
        Start symbol: program. *)

  | MenhirState017 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ, _menhir_box_program) _menhir_state
    (** State 017.
        Stack shape : expr RSHIFTEQ.
        Start symbol: program. *)

  | MenhirState018 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 018.
        Stack shape : expr RSHIFTEQ expr.
        Start symbol: program. *)

  | MenhirState019 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ, _menhir_box_program) _menhir_state
    (** State 019.
        Stack shape : expr PLUSEQ.
        Start symbol: program. *)

  | MenhirState020 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 020.
        Stack shape : expr PLUSEQ expr.
        Start symbol: program. *)

  | MenhirState021 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ, _menhir_box_program) _menhir_state
    (** State 021.
        Stack shape : expr OREQ.
        Start symbol: program. *)

  | MenhirState022 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 022.
        Stack shape : expr OREQ expr.
        Start symbol: program. *)

  | MenhirState023 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ, _menhir_box_program) _menhir_state
    (** State 023.
        Stack shape : expr MULTEQ.
        Start symbol: program. *)

  | MenhirState024 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 024.
        Stack shape : expr MULTEQ expr.
        Start symbol: program. *)

  | MenhirState025 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ, _menhir_box_program) _menhir_state
    (** State 025.
        Stack shape : expr MODEQ.
        Start symbol: program. *)

  | MenhirState026 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 026.
        Stack shape : expr MODEQ expr.
        Start symbol: program. *)

  | MenhirState027 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ, _menhir_box_program) _menhir_state
    (** State 027.
        Stack shape : expr MINUSEQ.
        Start symbol: program. *)

  | MenhirState028 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 028.
        Stack shape : expr MINUSEQ expr.
        Start symbol: program. *)

  | MenhirState029 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ, _menhir_box_program) _menhir_state
    (** State 029.
        Stack shape : expr LSHIFTEQ.
        Start symbol: program. *)

  | MenhirState030 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 030.
        Stack shape : expr LSHIFTEQ expr.
        Start symbol: program. *)

  | MenhirState031 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ, _menhir_box_program) _menhir_state
    (** State 031.
        Stack shape : expr DIVEQ.
        Start symbol: program. *)

  | MenhirState032 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 032.
        Stack shape : expr DIVEQ expr.
        Start symbol: program. *)

  | MenhirState033 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ, _menhir_box_program) _menhir_state
    (** State 033.
        Stack shape : expr ANDEQ.
        Start symbol: program. *)

  | MenhirState034 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : expr ANDEQ expr.
        Start symbol: program. *)

  | MenhirState037 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 037.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState038 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR, _menhir_box_program) _menhir_state
    (** State 038.
        Stack shape : expr STAR.
        Start symbol: program. *)

  | MenhirState039 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 039.
        Stack shape : expr STAR expr.
        Start symbol: program. *)

  | MenhirState040 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH, _menhir_box_program) _menhir_state
    (** State 040.
        Stack shape : expr SLASH.
        Start symbol: program. *)

  | MenhirState041 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 041.
        Stack shape : expr SLASH expr.
        Start symbol: program. *)

  | MenhirState042 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT, _menhir_box_program) _menhir_state
    (** State 042.
        Stack shape : expr RSHIFT.
        Start symbol: program. *)

  | MenhirState043 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 043.
        Stack shape : expr RSHIFT expr.
        Start symbol: program. *)

  | MenhirState044 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS, _menhir_box_program) _menhir_state
    (** State 044.
        Stack shape : expr PLUS.
        Start symbol: program. *)

  | MenhirState045 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 045.
        Stack shape : expr PLUS expr.
        Start symbol: program. *)

  | MenhirState046 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT, _menhir_box_program) _menhir_state
    (** State 046.
        Stack shape : expr PERCENT.
        Start symbol: program. *)

  | MenhirState047 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 047.
        Stack shape : expr PERCENT expr.
        Start symbol: program. *)

  | MenhirState048 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 048.
        Stack shape : expr MINUS.
        Start symbol: program. *)

  | MenhirState049 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 049.
        Stack shape : expr MINUS expr.
        Start symbol: program. *)

  | MenhirState050 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR, _menhir_box_program) _menhir_state
    (** State 050.
        Stack shape : expr OROR.
        Start symbol: program. *)

  | MenhirState051 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 051.
        Stack shape : expr OROR expr.
        Start symbol: program. *)

  | MenhirState052 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ, _menhir_box_program) _menhir_state
    (** State 052.
        Stack shape : expr NEQ.
        Start symbol: program. *)

  | MenhirState053 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 053.
        Stack shape : expr NEQ expr.
        Start symbol: program. *)

  | MenhirState054 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT, _menhir_box_program) _menhir_state
    (** State 054.
        Stack shape : expr LSHIFT.
        Start symbol: program. *)

  | MenhirState055 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 055.
        Stack shape : expr LSHIFT expr.
        Start symbol: program. *)

  | MenhirState056 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ, _menhir_box_program) _menhir_state
    (** State 056.
        Stack shape : expr LEQ.
        Start symbol: program. *)

  | MenhirState057 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 057.
        Stack shape : expr LEQ expr.
        Start symbol: program. *)

  | MenhirState058 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ, _menhir_box_program) _menhir_state
    (** State 058.
        Stack shape : expr GEQ.
        Start symbol: program. *)

  | MenhirState059 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 059.
        Stack shape : expr GEQ expr.
        Start symbol: program. *)

  | MenhirState060 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ, _menhir_box_program) _menhir_state
    (** State 060.
        Stack shape : expr EQEQ.
        Start symbol: program. *)

  | MenhirState061 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 061.
        Stack shape : expr EQEQ expr.
        Start symbol: program. *)

  | MenhirState062 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET, _menhir_box_program) _menhir_state
    (** State 062.
        Stack shape : expr CARET.
        Start symbol: program. *)

  | MenhirState063 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 063.
        Stack shape : expr CARET expr.
        Start symbol: program. *)

  | MenhirState064 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP, _menhir_box_program) _menhir_state
    (** State 064.
        Stack shape : expr AMP.
        Start symbol: program. *)

  | MenhirState065 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 065.
        Stack shape : expr AMP expr.
        Start symbol: program. *)

  | MenhirState066 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR, _menhir_box_program) _menhir_state
    (** State 066.
        Stack shape : expr BAR.
        Start symbol: program. *)

  | MenhirState067 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 067.
        Stack shape : expr BAR expr.
        Start symbol: program. *)

  | MenhirState068 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND, _menhir_box_program) _menhir_state
    (** State 068.
        Stack shape : expr ANDAND.
        Start symbol: program. *)

  | MenhirState069 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 069.
        Stack shape : expr ANDAND expr.
        Start symbol: program. *)

  | MenhirState072 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DOT _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 072.
        Stack shape : expr DOT IDENTIFIER.
        Start symbol: program. *)

  | MenhirState075 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_COMMA, _menhir_box_program) _menhir_state
    (** State 075.
        Stack shape : expr COMMA.
        Start symbol: program. *)

  | MenhirState079 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 079.
        Stack shape : IDENTIFIER IDENTIFIER.
        Start symbol: program. *)

  | MenhirState084 : ((('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 084.
        Stack shape : MINUS expr.
        Start symbol: program. *)

  | MenhirState085 : ((('s, _menhir_box_program) _menhir_cell1_REF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 085.
        Stack shape : REF expr.
        Start symbol: program. *)

  | MenhirState090 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 090.
        Stack shape : IDENTIFIER.
        Start symbol: program. *)

  | MenhirState095 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 095.
        Stack shape : IDENTIFIER IDENTIFIER.
        Start symbol: program. *)

  | MenhirState098 : (('s, _menhir_box_program) _menhir_cell1_BANG, _menhir_box_program) _menhir_state
    (** State 098.
        Stack shape : BANG.
        Start symbol: program. *)

  | MenhirState099 : ((('s, _menhir_box_program) _menhir_cell1_BANG, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 099.
        Stack shape : BANG expr.
        Start symbol: program. *)

  | MenhirState100 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ, _menhir_box_program) _menhir_state
    (** State 100.
        Stack shape : expr XOREQ.
        Start symbol: program. *)

  | MenhirState101 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 101.
        Stack shape : expr XOREQ expr.
        Start symbol: program. *)

  | MenhirState102 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ, _menhir_box_program) _menhir_state
    (** State 102.
        Stack shape : expr RSHIFTEQ.
        Start symbol: program. *)

  | MenhirState103 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 103.
        Stack shape : expr RSHIFTEQ expr.
        Start symbol: program. *)

  | MenhirState104 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ, _menhir_box_program) _menhir_state
    (** State 104.
        Stack shape : expr PLUSEQ.
        Start symbol: program. *)

  | MenhirState105 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 105.
        Stack shape : expr PLUSEQ expr.
        Start symbol: program. *)

  | MenhirState106 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ, _menhir_box_program) _menhir_state
    (** State 106.
        Stack shape : expr OREQ.
        Start symbol: program. *)

  | MenhirState107 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 107.
        Stack shape : expr OREQ expr.
        Start symbol: program. *)

  | MenhirState108 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ, _menhir_box_program) _menhir_state
    (** State 108.
        Stack shape : expr MULTEQ.
        Start symbol: program. *)

  | MenhirState109 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 109.
        Stack shape : expr MULTEQ expr.
        Start symbol: program. *)

  | MenhirState110 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ, _menhir_box_program) _menhir_state
    (** State 110.
        Stack shape : expr MODEQ.
        Start symbol: program. *)

  | MenhirState111 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 111.
        Stack shape : expr MODEQ expr.
        Start symbol: program. *)

  | MenhirState112 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ, _menhir_box_program) _menhir_state
    (** State 112.
        Stack shape : expr MINUSEQ.
        Start symbol: program. *)

  | MenhirState113 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 113.
        Stack shape : expr MINUSEQ expr.
        Start symbol: program. *)

  | MenhirState114 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ, _menhir_box_program) _menhir_state
    (** State 114.
        Stack shape : expr LSHIFTEQ.
        Start symbol: program. *)

  | MenhirState115 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 115.
        Stack shape : expr LSHIFTEQ expr.
        Start symbol: program. *)

  | MenhirState116 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ, _menhir_box_program) _menhir_state
    (** State 116.
        Stack shape : expr DIVEQ.
        Start symbol: program. *)

  | MenhirState117 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 117.
        Stack shape : expr DIVEQ expr.
        Start symbol: program. *)

  | MenhirState118 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ, _menhir_box_program) _menhir_state
    (** State 118.
        Stack shape : expr ANDEQ.
        Start symbol: program. *)

  | MenhirState119 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 119.
        Stack shape : expr ANDEQ expr.
        Start symbol: program. *)

  | MenhirState120 : ((('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 120.
        Stack shape : MINUS expr.
        Start symbol: program. *)

  | MenhirState121 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR, _menhir_box_program) _menhir_state
    (** State 121.
        Stack shape : expr STAR.
        Start symbol: program. *)

  | MenhirState122 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 122.
        Stack shape : expr STAR expr.
        Start symbol: program. *)

  | MenhirState123 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH, _menhir_box_program) _menhir_state
    (** State 123.
        Stack shape : expr SLASH.
        Start symbol: program. *)

  | MenhirState124 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 124.
        Stack shape : expr SLASH expr.
        Start symbol: program. *)

  | MenhirState125 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS, _menhir_box_program) _menhir_state
    (** State 125.
        Stack shape : expr PLUS.
        Start symbol: program. *)

  | MenhirState126 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 126.
        Stack shape : expr PLUS expr.
        Start symbol: program. *)

  | MenhirState127 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT, _menhir_box_program) _menhir_state
    (** State 127.
        Stack shape : expr PERCENT.
        Start symbol: program. *)

  | MenhirState128 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 128.
        Stack shape : expr PERCENT expr.
        Start symbol: program. *)

  | MenhirState129 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 129.
        Stack shape : expr MINUS.
        Start symbol: program. *)

  | MenhirState130 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 130.
        Stack shape : expr MINUS expr.
        Start symbol: program. *)

  | MenhirState131 : ((('s, _menhir_box_program) _menhir_cell1_REF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 131.
        Stack shape : REF expr.
        Start symbol: program. *)

  | MenhirState132 : (('s, _menhir_box_program) _menhir_cell1_LOOP, _menhir_box_program) _menhir_state
    (** State 132.
        Stack shape : LOOP.
        Start symbol: program. *)

  | MenhirState133 : (('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_state
    (** State 133.
        Stack shape : LBRACE.
        Start symbol: program. *)

  | MenhirState138 : (('s, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 138.
        Stack shape : LET IDENTIFIER.
        Start symbol: program. *)

  | MenhirState139 : ((('s, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 139.
        Stack shape : LET IDENTIFIER expr.
        Start symbol: program. *)

  | MenhirState142 : (('s, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 142.
        Stack shape : LET IDENTIFIER.
        Start symbol: program. *)

  | MenhirState143 : ((('s, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 143.
        Stack shape : LET IDENTIFIER expr.
        Start symbol: program. *)

  | MenhirState145 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 145.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState146 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 146.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState148 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_block, _menhir_box_program) _menhir_state
    (** State 148.
        Stack shape : IF expr block.
        Start symbol: program. *)

  | MenhirState152 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 152.
        Stack shape : IDENTIFIER.
        Start symbol: program. *)

  | MenhirState153 : ((('s, _menhir_box_program) _menhir_cell1_IDENTIFIER, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 153.
        Stack shape : IDENTIFIER expr.
        Start symbol: program. *)

  | MenhirState157 : (('s, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 157.
        Stack shape : FN IDENTIFIER.
        Start symbol: program. *)

  | MenhirState161 : (('s, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 161.
        Stack shape : IDENTIFIER IDENTIFIER.
        Start symbol: program. *)

  | MenhirState164 : ((('s, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_state
    (** State 164.
        Stack shape : FN IDENTIFIER params.
        Start symbol: program. *)

  | MenhirState166 : (((('s, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_cell1_ARROW _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 166.
        Stack shape : FN IDENTIFIER params ARROW IDENTIFIER.
        Start symbol: program. *)

  | MenhirState174 : (('s, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 174.
        Stack shape : stmt.
        Start symbol: program. *)

  | MenhirState176 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 176.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState178 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT, _menhir_box_program) _menhir_state
    (** State 178.
        Stack shape : expr RSHIFT.
        Start symbol: program. *)

  | MenhirState179 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 179.
        Stack shape : expr RSHIFT expr.
        Start symbol: program. *)

  | MenhirState180 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR, _menhir_box_program) _menhir_state
    (** State 180.
        Stack shape : expr OROR.
        Start symbol: program. *)

  | MenhirState181 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 181.
        Stack shape : expr OROR expr.
        Start symbol: program. *)

  | MenhirState182 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ, _menhir_box_program) _menhir_state
    (** State 182.
        Stack shape : expr NEQ.
        Start symbol: program. *)

  | MenhirState183 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 183.
        Stack shape : expr NEQ expr.
        Start symbol: program. *)

  | MenhirState184 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT, _menhir_box_program) _menhir_state
    (** State 184.
        Stack shape : expr LSHIFT.
        Start symbol: program. *)

  | MenhirState185 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 185.
        Stack shape : expr LSHIFT expr.
        Start symbol: program. *)

  | MenhirState186 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ, _menhir_box_program) _menhir_state
    (** State 186.
        Stack shape : expr LEQ.
        Start symbol: program. *)

  | MenhirState187 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 187.
        Stack shape : expr LEQ expr.
        Start symbol: program. *)

  | MenhirState188 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ, _menhir_box_program) _menhir_state
    (** State 188.
        Stack shape : expr GEQ.
        Start symbol: program. *)

  | MenhirState189 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 189.
        Stack shape : expr GEQ expr.
        Start symbol: program. *)

  | MenhirState190 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ, _menhir_box_program) _menhir_state
    (** State 190.
        Stack shape : expr EQEQ.
        Start symbol: program. *)

  | MenhirState191 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 191.
        Stack shape : expr EQEQ expr.
        Start symbol: program. *)

  | MenhirState192 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET, _menhir_box_program) _menhir_state
    (** State 192.
        Stack shape : expr CARET.
        Start symbol: program. *)

  | MenhirState193 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 193.
        Stack shape : expr CARET expr.
        Start symbol: program. *)

  | MenhirState194 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP, _menhir_box_program) _menhir_state
    (** State 194.
        Stack shape : expr AMP.
        Start symbol: program. *)

  | MenhirState195 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 195.
        Stack shape : expr AMP expr.
        Start symbol: program. *)

  | MenhirState196 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR, _menhir_box_program) _menhir_state
    (** State 196.
        Stack shape : expr BAR.
        Start symbol: program. *)

  | MenhirState197 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 197.
        Stack shape : expr BAR expr.
        Start symbol: program. *)

  | MenhirState198 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND, _menhir_box_program) _menhir_state
    (** State 198.
        Stack shape : expr ANDAND.
        Start symbol: program. *)

  | MenhirState199 : (((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 199.
        Stack shape : expr ANDAND expr.
        Start symbol: program. *)

  | MenhirState202 : ((('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DOT _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_state
    (** State 202.
        Stack shape : expr DOT IDENTIFIER.
        Start symbol: program. *)


and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (
# 35 "parser.mly"
      (Ast.block)
# 814 "parser.ml"
)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (
# 38 "parser.mly"
      (Ast.expr)
# 821 "parser.ml"
)

and ('s, 'r) _menhir_cell1_params = 
  | MenhirCell1_params of 's * ('s, 'r) _menhir_state * (
# 31 "parser.mly"
      ((string * string) list)
# 828 "parser.ml"
)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (
# 37 "parser.mly"
      (Ast.stmt)
# 835 "parser.ml"
)

and ('s, 'r) _menhir_cell1_AMP = 
  | MenhirCell1_AMP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ANDAND = 
  | MenhirCell1_ANDAND of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ANDEQ = 
  | MenhirCell1_ANDEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ARROW = 
  | MenhirCell1_ARROW of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BAR = 
  | MenhirCell1_BAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CARET = 
  | MenhirCell1_CARET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_COMMA = 
  | MenhirCell1_COMMA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DIVEQ = 
  | MenhirCell1_DIVEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DOT = 
  | MenhirCell1_DOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EQEQ = 
  | MenhirCell1_EQEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FN = 
  | MenhirCell1_FN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GEQ = 
  | MenhirCell1_GEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENTIFIER = 
  | MenhirCell1_IDENTIFIER of 's * ('s, 'r) _menhir_state * (
# 5 "parser.mly"
       (string)
# 881 "parser.ml"
)

and 's _menhir_cell0_IDENTIFIER = 
  | MenhirCell0_IDENTIFIER of 's * (
# 5 "parser.mly"
       (string)
# 888 "parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACKET = 
  | MenhirCell1_LBRACKET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LEQ = 
  | MenhirCell1_LEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LOOP = 
  | MenhirCell1_LOOP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LSHIFT = 
  | MenhirCell1_LSHIFT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LSHIFTEQ = 
  | MenhirCell1_LSHIFTEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUSEQ = 
  | MenhirCell1_MINUSEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MODEQ = 
  | MenhirCell1_MODEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MULTEQ = 
  | MenhirCell1_MULTEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NEQ = 
  | MenhirCell1_NEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OREQ = 
  | MenhirCell1_OREQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OROR = 
  | MenhirCell1_OROR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PERCENT = 
  | MenhirCell1_PERCENT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUSEQ = 
  | MenhirCell1_PLUSEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_REF = 
  | MenhirCell1_REF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RSHIFT = 
  | MenhirCell1_RSHIFT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RSHIFTEQ = 
  | MenhirCell1_RSHIFTEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SLASH = 
  | MenhirCell1_SLASH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STAR = 
  | MenhirCell1_STAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_XOREQ = 
  | MenhirCell1_XOREQ of 's * ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (
# 34 "parser.mly"
      (Ast.program)
# 967 "parser.ml"
) [@@unboxed]

let _menhir_action_01 =
  fun _2 ->
    (
# 60 "parser.mly"
                        ( _2 )
# 975 "parser.ml"
     : (
# 35 "parser.mly"
      (Ast.block)
# 979 "parser.ml"
    ))

let _menhir_action_02 =
  fun () ->
    (
# 61 "parser.mly"
                  ( [] )
# 987 "parser.ml"
     : (
# 35 "parser.mly"
      (Ast.block)
# 991 "parser.ml"
    ))

let _menhir_action_03 =
  fun _1 _3 ->
    (
# 97 "parser.mly"
                                       ( FunctionCall (_1, _3) )
# 999 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1003 "parser.ml"
    ))

let _menhir_action_04 =
  fun _1 _3 _5 ->
    (
# 98 "parser.mly"
                                                              (
    NamespaceCall (_1, _3, _5)  (* Handle String::from *)
  )
# 1013 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1017 "parser.ml"
    ))

let _menhir_action_05 =
  fun _1 _3 _5 ->
    (
# 101 "parser.mly"
                                                (
      MethodCall (_1, _3, _5)  (* Handle a.push_str(...) *)
  )
# 1027 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1031 "parser.ml"
    ))

let _menhir_action_06 =
  fun _2 ->
    (
# 104 "parser.mly"
              ( UnaryOp ("!", _2) )
# 1039 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1043 "parser.ml"
    ))

let _menhir_action_07 =
  fun _2 ->
    (
# 105 "parser.mly"
                            ( UnaryOp ("-", _2) )
# 1051 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1055 "parser.ml"
    ))

let _menhir_action_08 =
  fun _2 ->
    (
# 106 "parser.mly"
                       ( UnaryOp ("&", _2) )
# 1063 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1067 "parser.ml"
    ))

let _menhir_action_09 =
  fun _1 ->
    (
# 107 "parser.mly"
                ( Int _1 )
# 1075 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1079 "parser.ml"
    ))

let _menhir_action_10 =
  fun _1 ->
    (
# 108 "parser.mly"
                   ( String _1 )
# 1087 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1091 "parser.ml"
    ))

let _menhir_action_11 =
  fun _1 ->
    (
# 109 "parser.mly"
               ( Var _1 )
# 1099 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1103 "parser.ml"
    ))

let _menhir_action_12 =
  fun _1 _3 ->
    (
# 110 "parser.mly"
                   ( BinaryOp ("+", _1, _3) )
# 1111 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1115 "parser.ml"
    ))

let _menhir_action_13 =
  fun _1 _3 ->
    (
# 111 "parser.mly"
                    ( BinaryOp ("-", _1, _3) )
# 1123 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1127 "parser.ml"
    ))

let _menhir_action_14 =
  fun _1 _3 ->
    (
# 112 "parser.mly"
                   ( BinaryOp ("*", _1, _3) )
# 1135 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1139 "parser.ml"
    ))

let _menhir_action_15 =
  fun _1 _3 ->
    (
# 113 "parser.mly"
                    ( BinaryOp ("/", _1, _3) )
# 1147 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1151 "parser.ml"
    ))

let _menhir_action_16 =
  fun _1 _3 ->
    (
# 114 "parser.mly"
                      ( BinaryOp ("%", _1, _3) )
# 1159 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1163 "parser.ml"
    ))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 115 "parser.mly"
                  ( BinaryOp ("&", _1, _3) )
# 1171 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1175 "parser.ml"
    ))

let _menhir_action_18 =
  fun _1 _3 ->
    (
# 116 "parser.mly"
                  ( BinaryOp ("|", _1, _3) )
# 1183 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1187 "parser.ml"
    ))

let _menhir_action_19 =
  fun _1 _3 ->
    (
# 117 "parser.mly"
                    ( BinaryOp ("^", _1, _3) )
# 1195 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1199 "parser.ml"
    ))

let _menhir_action_20 =
  fun _1 _3 ->
    (
# 118 "parser.mly"
                     ( BinaryOp ("&&", _1, _3) )
# 1207 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1211 "parser.ml"
    ))

let _menhir_action_21 =
  fun _1 _3 ->
    (
# 119 "parser.mly"
                   ( BinaryOp ("||", _1, _3) )
# 1219 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1223 "parser.ml"
    ))

let _menhir_action_22 =
  fun _1 _3 ->
    (
# 120 "parser.mly"
                   ( BinaryOp ("==", _1, _3) )
# 1231 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1235 "parser.ml"
    ))

let _menhir_action_23 =
  fun _1 _3 ->
    (
# 121 "parser.mly"
                  ( BinaryOp ("!=", _1, _3) )
# 1243 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1247 "parser.ml"
    ))

let _menhir_action_24 =
  fun _1 _3 ->
    (
# 122 "parser.mly"
                  ( BinaryOp ("<=", _1, _3) )
# 1255 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1259 "parser.ml"
    ))

let _menhir_action_25 =
  fun _1 _3 ->
    (
# 123 "parser.mly"
                  ( BinaryOp (">=", _1, _3) )
# 1267 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1271 "parser.ml"
    ))

let _menhir_action_26 =
  fun _1 _3 ->
    (
# 124 "parser.mly"
                     ( BinaryOp ("<<", _1, _3) )
# 1279 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1283 "parser.ml"
    ))

let _menhir_action_27 =
  fun _1 _3 ->
    (
# 125 "parser.mly"
                     ( BinaryOp (">>", _1, _3) )
# 1291 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1295 "parser.ml"
    ))

let _menhir_action_28 =
  fun _1 _3 ->
    (
# 126 "parser.mly"
                     ( BinaryOp ("+=", _1, _3) )
# 1303 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1307 "parser.ml"
    ))

let _menhir_action_29 =
  fun _1 _3 ->
    (
# 127 "parser.mly"
                      ( BinaryOp ("-=", _1, _3) )
# 1315 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1319 "parser.ml"
    ))

let _menhir_action_30 =
  fun _1 _3 ->
    (
# 128 "parser.mly"
                     ( BinaryOp ("*=", _1, _3) )
# 1327 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1331 "parser.ml"
    ))

let _menhir_action_31 =
  fun _1 _3 ->
    (
# 129 "parser.mly"
                    ( BinaryOp ("/=", _1, _3) )
# 1339 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1343 "parser.ml"
    ))

let _menhir_action_32 =
  fun _1 _3 ->
    (
# 130 "parser.mly"
                    ( BinaryOp ("%=", _1, _3) )
# 1351 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1355 "parser.ml"
    ))

let _menhir_action_33 =
  fun _1 _3 ->
    (
# 131 "parser.mly"
                    ( BinaryOp ("&=", _1, _3) )
# 1363 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1367 "parser.ml"
    ))

let _menhir_action_34 =
  fun _1 _3 ->
    (
# 132 "parser.mly"
                   ( BinaryOp ("|=", _1, _3) )
# 1375 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1379 "parser.ml"
    ))

let _menhir_action_35 =
  fun _1 _3 ->
    (
# 133 "parser.mly"
                    ( BinaryOp ("^=", _1, _3) )
# 1387 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1391 "parser.ml"
    ))

let _menhir_action_36 =
  fun _1 _3 ->
    (
# 134 "parser.mly"
                       ( BinaryOp ("<<=", _1, _3) )
# 1399 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1403 "parser.ml"
    ))

let _menhir_action_37 =
  fun _1 _3 ->
    (
# 135 "parser.mly"
                       ( BinaryOp (">>=", _1, _3) )
# 1411 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1415 "parser.ml"
    ))

let _menhir_action_38 =
  fun _2 ->
    (
# 136 "parser.mly"
                                ( Array _2 )
# 1423 "parser.ml"
     : (
# 38 "parser.mly"
      (Ast.expr)
# 1427 "parser.ml"
    ))

let _menhir_action_39 =
  fun _1 _3 ->
    (
# 92 "parser.mly"
                         ( _1 :: _3 )
# 1435 "parser.ml"
     : (
# 39 "parser.mly"
      (Ast.expr list)
# 1439 "parser.ml"
    ))

let _menhir_action_40 =
  fun _1 ->
    (
# 93 "parser.mly"
         ( [_1] )
# 1447 "parser.ml"
     : (
# 39 "parser.mly"
      (Ast.expr list)
# 1451 "parser.ml"
    ))

let _menhir_action_41 =
  fun () ->
    (
# 94 "parser.mly"
                ( [] )
# 1459 "parser.ml"
     : (
# 39 "parser.mly"
      (Ast.expr list)
# 1463 "parser.ml"
    ))

let _menhir_action_42 =
  fun _1 _3 _5 ->
    (
# 54 "parser.mly"
                                                       ( (_1, _3) :: _5 )
# 1471 "parser.ml"
     : (
# 32 "parser.mly"
      ((string * string) list)
# 1475 "parser.ml"
    ))

let _menhir_action_43 =
  fun _1 _3 ->
    (
# 55 "parser.mly"
                                ( [(_1, _3)] )
# 1483 "parser.ml"
     : (
# 32 "parser.mly"
      ((string * string) list)
# 1487 "parser.ml"
    ))

let _menhir_action_44 =
  fun _2 ->
    (
# 88 "parser.mly"
               ( Some _2 )
# 1495 "parser.ml"
     : (
# 40 "parser.mly"
      (Ast.block option)
# 1499 "parser.ml"
    ))

let _menhir_action_45 =
  fun () ->
    (
# 89 "parser.mly"
                ( None )
# 1507 "parser.ml"
     : (
# 40 "parser.mly"
      (Ast.block option)
# 1511 "parser.ml"
    ))

let _menhir_action_46 =
  fun _1 ->
    (
# 50 "parser.mly"
                     ( _1 )
# 1519 "parser.ml"
     : (
# 31 "parser.mly"
      ((string * string) list)
# 1523 "parser.ml"
    ))

let _menhir_action_47 =
  fun () ->
    (
# 51 "parser.mly"
                ( [] )
# 1531 "parser.ml"
     : (
# 31 "parser.mly"
      ((string * string) list)
# 1535 "parser.ml"
    ))

let _menhir_action_48 =
  fun _1 ->
    (
# 47 "parser.mly"
              ( print_endline "Parsed program";Program _1 )
# 1543 "parser.ml"
     : (
# 34 "parser.mly"
      (Ast.program)
# 1547 "parser.ml"
    ))

let _menhir_action_49 =
  fun _2 _4 ->
    (
# 69 "parser.mly"
                                        ( Let (_2, _4, false) )
# 1555 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1559 "parser.ml"
    ))

let _menhir_action_50 =
  fun _2 _4 _6 ->
    (
# 70 "parser.mly"
                                             (
      print_endline ("Parsed function: " ^ _2);FunctionDef { name = _2; params = _4; body = _6; return_type = None }
  )
# 1569 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1573 "parser.ml"
    ))

let _menhir_action_51 =
  fun _2 _4 _7 _8 ->
    (
# 73 "parser.mly"
                                                              (
      print_endline ("Parsed function with return type: " ^ _2);FunctionDef { name = _2; params = _4; body = _8; return_type = Some _7 }
  )
# 1583 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1587 "parser.ml"
    ))

let _menhir_action_52 =
  fun _3 _5 ->
    (
# 76 "parser.mly"
                                            ( Let (_3, _5, true) )
# 1595 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1599 "parser.ml"
    ))

let _menhir_action_53 =
  fun _1 _3 ->
    (
# 77 "parser.mly"
                                    ( Assign (_1, _3) )
# 1607 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1611 "parser.ml"
    ))

let _menhir_action_54 =
  fun _2 _3 _4 ->
    (
# 78 "parser.mly"
                           ( If (_2, _3, _4) )
# 1619 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1623 "parser.ml"
    ))

let _menhir_action_55 =
  fun _2 ->
    (
# 79 "parser.mly"
               ( Loop (_2) )
# 1631 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1635 "parser.ml"
    ))

let _menhir_action_56 =
  fun () ->
    (
# 80 "parser.mly"
                    ( Break )
# 1643 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1647 "parser.ml"
    ))

let _menhir_action_57 =
  fun _1 ->
    (
# 81 "parser.mly"
         ( Expr _1 )
# 1655 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1659 "parser.ml"
    ))

let _menhir_action_58 =
  fun _1 ->
    (
# 82 "parser.mly"
                   ( print_endline "Parsed expression statement"; Expr _1 )
# 1667 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1671 "parser.ml"
    ))

let _menhir_action_59 =
  fun _1 ->
    (
# 83 "parser.mly"
          ( print_endline "Parsed block statement"; ExprBlock _1 )
# 1679 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1683 "parser.ml"
    ))

let _menhir_action_60 =
  fun () ->
    let _ = (
# 84 "parser.mly"
          ( failwith "Syntax error in statement" )
# 1691 "parser.ml"
     : (
# 37 "parser.mly"
      (Ast.stmt)
# 1695 "parser.ml"
    )) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\nstmt -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_action_61 =
  fun _1 ->
    (
# 65 "parser.mly"
         ( [_1] )
# 1705 "parser.ml"
     : (
# 36 "parser.mly"
      (Ast.stmt list)
# 1709 "parser.ml"
    ))

let _menhir_action_62 =
  fun _1 _2 ->
    (
# 66 "parser.mly"
               ( _1 :: _2 )
# 1717 "parser.ml"
     : (
# 36 "parser.mly"
      (Ast.stmt list)
# 1721 "parser.ml"
    ))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AMP ->
        "AMP"
    | ANDAND ->
        "ANDAND"
    | ANDEQ ->
        "ANDEQ"
    | ARROW ->
        "ARROW"
    | BANG ->
        "BANG"
    | BAR ->
        "BAR"
    | BREAK ->
        "BREAK"
    | CARET ->
        "CARET"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | DIVEQ ->
        "DIVEQ"
    | DOT ->
        "DOT"
    | DOUBLECOLON ->
        "DOUBLECOLON"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQEQ ->
        "EQEQ"
    | EQUAL ->
        "EQUAL"
    | FN ->
        "FN"
    | GEQ ->
        "GEQ"
    | IDENTIFIER _ ->
        "IDENTIFIER"
    | IF ->
        "IF"
    | INT_LITERAL _ ->
        "INT_LITERAL"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LEQ ->
        "LEQ"
    | LET ->
        "LET"
    | LOOP ->
        "LOOP"
    | LPAREN ->
        "LPAREN"
    | LSHIFT ->
        "LSHIFT"
    | LSHIFTEQ ->
        "LSHIFTEQ"
    | MINUS ->
        "MINUS"
    | MINUSEQ ->
        "MINUSEQ"
    | MODEQ ->
        "MODEQ"
    | MULTEQ ->
        "MULTEQ"
    | MUT ->
        "MUT"
    | NEQ ->
        "NEQ"
    | OREQ ->
        "OREQ"
    | OROR ->
        "OROR"
    | PERCENT ->
        "PERCENT"
    | PLUS ->
        "PLUS"
    | PLUSEQ ->
        "PLUSEQ"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | REF ->
        "REF"
    | RPAREN ->
        "RPAREN"
    | RSHIFT ->
        "RSHIFT"
    | RSHIFTEQ ->
        "RSHIFTEQ"
    | SEMICOLON ->
        "SEMICOLON"
    | SLASH ->
        "SLASH"
    | STAR ->
        "STAR"
    | STRING_LITERAL _ ->
        "STRING_LITERAL"
    | UMINUS ->
        "UMINUS"
    | XOREQ ->
        "XOREQ"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_error_goto_stmt : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_001 _menhir_stack MenhirState174
  
  and _menhir_error_run_001 : type  ttv_stack. ttv_stack -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_s ->
      let _v = _menhir_action_60 () in
      _menhir_error_goto_stmt _menhir_stack _v _menhir_s
  
  let _menhir_error_run_176 : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      let _1 = _v in
      let _v = _menhir_action_57 _1 in
      _menhir_error_goto_stmt _menhir_stack _v _menhir_s
  
  let rec _menhir_error_goto_expr : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState198 ->
          _menhir_error_run_199 _menhir_stack _v
      | MenhirState196 ->
          _menhir_error_run_197 _menhir_stack _v
      | MenhirState194 ->
          _menhir_error_run_195 _menhir_stack _v
      | MenhirState192 ->
          _menhir_error_run_193 _menhir_stack _v
      | MenhirState190 ->
          _menhir_error_run_191 _menhir_stack _v
      | MenhirState188 ->
          _menhir_error_run_189 _menhir_stack _v
      | MenhirState186 ->
          _menhir_error_run_187 _menhir_stack _v
      | MenhirState184 ->
          _menhir_error_run_185 _menhir_stack _v
      | MenhirState182 ->
          _menhir_error_run_183 _menhir_stack _v
      | MenhirState180 ->
          _menhir_error_run_181 _menhir_stack _v
      | MenhirState178 ->
          _menhir_error_run_179 _menhir_stack _v
      | MenhirState000 ->
          _menhir_error_run_176 _menhir_stack _v _menhir_s
      | MenhirState133 ->
          _menhir_error_run_176 _menhir_stack _v _menhir_s
      | MenhirState174 ->
          _menhir_error_run_176 _menhir_stack _v _menhir_s
      | MenhirState152 ->
          _eRR ()
      | MenhirState145 ->
          _eRR ()
      | MenhirState142 ->
          _eRR ()
      | MenhirState138 ->
          _eRR ()
      | MenhirState003 ->
          _menhir_error_run_131 _menhir_stack _v
      | MenhirState129 ->
          _menhir_error_run_130 _menhir_stack _v
      | MenhirState127 ->
          _menhir_error_run_128 _menhir_stack _v
      | MenhirState125 ->
          _menhir_error_run_126 _menhir_stack _v
      | MenhirState123 ->
          _menhir_error_run_124 _menhir_stack _v
      | MenhirState121 ->
          _menhir_error_run_122 _menhir_stack _v
      | MenhirState004 ->
          _menhir_error_run_120 _menhir_stack _v
      | MenhirState118 ->
          _menhir_error_run_119 _menhir_stack _v
      | MenhirState116 ->
          _menhir_error_run_117 _menhir_stack _v
      | MenhirState114 ->
          _menhir_error_run_115 _menhir_stack _v
      | MenhirState112 ->
          _menhir_error_run_113 _menhir_stack _v
      | MenhirState110 ->
          _menhir_error_run_111 _menhir_stack _v
      | MenhirState108 ->
          _menhir_error_run_109 _menhir_stack _v
      | MenhirState106 ->
          _menhir_error_run_107 _menhir_stack _v
      | MenhirState104 ->
          _menhir_error_run_105 _menhir_stack _v
      | MenhirState102 ->
          _menhir_error_run_103 _menhir_stack _v
      | MenhirState100 ->
          _menhir_error_run_101 _menhir_stack _v
      | MenhirState098 ->
          _menhir_error_run_099 _menhir_stack _v
      | MenhirState007 ->
          _eRR ()
      | MenhirState008 ->
          _eRR ()
      | MenhirState068 ->
          _eRR ()
      | MenhirState066 ->
          _eRR ()
      | MenhirState064 ->
          _eRR ()
      | MenhirState062 ->
          _eRR ()
      | MenhirState060 ->
          _eRR ()
      | MenhirState058 ->
          _eRR ()
      | MenhirState056 ->
          _eRR ()
      | MenhirState054 ->
          _eRR ()
      | MenhirState052 ->
          _eRR ()
      | MenhirState050 ->
          _eRR ()
      | MenhirState048 ->
          _eRR ()
      | MenhirState046 ->
          _eRR ()
      | MenhirState044 ->
          _eRR ()
      | MenhirState042 ->
          _eRR ()
      | MenhirState040 ->
          _eRR ()
      | MenhirState038 ->
          _eRR ()
      | MenhirState202 ->
          _eRR ()
      | MenhirState095 ->
          _eRR ()
      | MenhirState090 ->
          _eRR ()
      | MenhirState005 ->
          _eRR ()
      | MenhirState009 ->
          _eRR ()
      | MenhirState079 ->
          _eRR ()
      | MenhirState075 ->
          _eRR ()
      | MenhirState072 ->
          _eRR ()
      | MenhirState012 ->
          _eRR ()
      | MenhirState033 ->
          _eRR ()
      | MenhirState031 ->
          _eRR ()
      | MenhirState029 ->
          _eRR ()
      | MenhirState027 ->
          _eRR ()
      | MenhirState025 ->
          _eRR ()
      | MenhirState023 ->
          _eRR ()
      | MenhirState021 ->
          _eRR ()
      | MenhirState019 ->
          _eRR ()
      | MenhirState017 ->
          _eRR ()
      | MenhirState015 ->
          _eRR ()
      | MenhirState013 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_199 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_ANDAND (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_20 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_197 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_BAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_18 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_195 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_AMP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_17 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_193 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_CARET (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_19 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_191 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_EQEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_22 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_189 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_GEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_25 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_187 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_LEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_24 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_185 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_LSHIFT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_26 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_183 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_NEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_23 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_181 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_OROR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_21 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_179 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_RSHIFT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_27 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_131 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_REF -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_08 _2 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_130 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_13 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_128 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_PERCENT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_16 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_126 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_12 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_124 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_SLASH (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_15 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_122 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_STAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_14 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_120 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_MINUS -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_07 _2 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_119 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_ANDEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_33 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_117 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_DIVEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_31 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_115 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_LSHIFTEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_36 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_113 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_MINUSEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_29 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_111 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_MODEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_32 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_109 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_MULTEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_30 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_107 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_OREQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_34 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_105 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_PLUSEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_28 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_103 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_RSHIFTEQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_37 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_101 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_XOREQ (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_35 _1 _3 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_error_run_099 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_BANG -> _ -> _menhir_box_program =
    fun _menhir_stack _v ->
      let MenhirCell1_BANG (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_06 _2 in
      _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  let _menhir_run_207 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let _1 = _v in
          let _v = _menhir_action_48 _1 in
          MenhirBox_program _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_002 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_10 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState198 ->
          _menhir_run_199 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState196 ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState194 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState192 ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState190 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState188 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState186 ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState184 ->
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState182 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState180 ->
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState178 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState174 ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState118 ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState114 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_199 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState199
      | ANDAND | BANG | BREAK | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_ANDAND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_ANDAND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_100 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_XOREQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState100 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState003 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState004 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState005
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | RBRACKET ->
          let _v = _menhir_action_41 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_006 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_10 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_REF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState007 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState008 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | RBRACKET ->
          let _v = _menhir_action_41 () in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_09 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING_LITERAL _v_0 ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState012
          | REF ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
          | MINUS ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
          | LBRACKET ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
          | INT_LITERAL _v_1 ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState012
          | IDENTIFIER _v_2 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState012
          | BANG ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
          | RPAREN ->
              let _v_3 = _menhir_action_41 () in
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 _tok
          | _ ->
              _eRR ())
      | DOUBLECOLON ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v_4 ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v_4) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | STRING_LITERAL _v_5 ->
                      _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState079
                  | REF ->
                      _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
                  | MINUS ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
                  | LBRACKET ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
                  | INT_LITERAL _v_6 ->
                      _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState079
                  | IDENTIFIER _v_7 ->
                      _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState079
                  | BANG ->
                      _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
                  | RPAREN ->
                      let _v_8 = _menhir_action_41 () in
                      _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v_8 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | AMP | ANDAND | ANDEQ | BAR | CARET | COMMA | DIVEQ | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | LSHIFTEQ | MINUS | MINUSEQ | MODEQ | MULTEQ | NEQ | OREQ | OROR | PERCENT | PLUS | PLUSEQ | RBRACKET | RPAREN | RSHIFT | RSHIFTEQ | SEMICOLON | SLASH | STAR | XOREQ ->
          let _1 = _v in
          let _v = _menhir_action_11 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState013 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_03 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_04 _1 _3 _5 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_38 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_38 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_09 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_089 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DOUBLECOLON ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMP | ANDAND | ANDEQ | BANG | BAR | BREAK | CARET | DIVEQ | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | LSHIFTEQ | MINUS | MINUSEQ | MODEQ | MULTEQ | NEQ | OREQ | OROR | PERCENT | PLUS | PLUSEQ | RBRACE | REF | RSHIFT | RSHIFTEQ | SEMICOLON | SLASH | STAR | STRING_LITERAL _ | XOREQ ->
          let _1 = _v in
          let _v = _menhir_action_11 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _1 = _v in
          let _v = _menhir_action_11 _1 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_090 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | RPAREN ->
          let _v = _menhir_action_41 () in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_03 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENTIFIER _v ->
          let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STRING_LITERAL _v_0 ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState095
              | REF ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
              | MINUS ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
              | LBRACKET ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
              | INT_LITERAL _v_1 ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState095
              | IDENTIFIER _v_2 ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState095
              | BANG ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
              | RPAREN ->
                  let _v_3 = _menhir_action_41 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_04 _1 _3 _5 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState098 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState121 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_123 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SLASH (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState123 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState102 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_178 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState178 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUSEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState104 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState125 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_127 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PERCENT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState127 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OREQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState106 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_182 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState182 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MULTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState108 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_110 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MODEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState110 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUSEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState112 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_129 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState129 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSHIFTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState114 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_184 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSHIFT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState184 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_186 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState186 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_188 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState188 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_190 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState190 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DIVEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState116 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_192 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CARET (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState192 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_196 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState196 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState118 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_194 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AMP (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState194 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_197 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | ANDAND | BANG | BAR | BREAK | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_BAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_BAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_195 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_AMP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_AMP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_193 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState193
      | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_CARET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_CARET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_191 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_EQEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_EQEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_189 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_GEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_25 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_GEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_25 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_187 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_LEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_24 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_LEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_24 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_185 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | NEQ | OROR | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_LSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_26 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_LSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_26 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_183 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_NEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_23 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_NEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_23 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_181 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | BANG | BREAK | DOT | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | OROR | RBRACE | REF | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_OROR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_OROR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_198 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDAND (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState198 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_179 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | NEQ | OROR | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_RSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_27 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_RSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_27 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_176 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_58 _1 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | OROR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_OROR (_menhir_stack, MenhirState176) in
          let _menhir_s = MenhirState180 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING_LITERAL _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACKET ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT_LITERAL _v ->
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IDENTIFIER _v ->
              _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BANG ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | DOT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_DOT (_menhir_stack, MenhirState176) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v_3 ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v_3) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | STRING_LITERAL _v_4 ->
                      _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState202
                  | REF ->
                      _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
                  | MINUS ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
                  | LBRACKET ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
                  | INT_LITERAL _v_5 ->
                      _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState202
                  | IDENTIFIER _v_6 ->
                      _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState202
                  | BANG ->
                      _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
                  | RPAREN ->
                      let _v_7 = _menhir_action_41 () in
                      _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_194 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
      | BANG | BREAK | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | RBRACE | REF | STRING_LITERAL _ ->
          let _1 = _v in
          let _v = _menhir_action_57 _1 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _1 = _v in
          let _v = _menhir_action_57 _1 in
          _menhir_error_goto_stmt _menhir_stack _v _menhir_s
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v_0 ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState174
      | REF ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | LOOP ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | LET ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | INT_LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState174
      | IF ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | IDENTIFIER _v_2 ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState174
      | FN ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | BREAK ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | BANG ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
      | EOF | RBRACE ->
          let _1 = _v in
          let _v = _menhir_action_61 _1 in
          _menhir_goto_stmts _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_001 _menhir_stack MenhirState174
  
  and _menhir_run_132 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LOOP (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState132 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133
      | REF ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_02 () in
          _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MINUS ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LOOP ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LET ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LBRACE ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | INT_LITERAL _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133
      | IF ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | IDENTIFIER _v ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133
      | FN ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BREAK ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BANG ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | _ ->
          let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
          _menhir_error_run_001 _menhir_stack MenhirState133
  
  and _menhir_goto_block : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState132 ->
          _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState000 ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState174 ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState164 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState166 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState148 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_206 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LOOP -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_LOOP (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_55 _2 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_205 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_59 _1 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_168 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_params -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_params (_menhir_stack, _, _4) = _menhir_stack in
      let MenhirCell0_IDENTIFIER (_menhir_stack, _2) = _menhir_stack in
      let MenhirCell1_FN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _6 = _v in
      let _v = _menhir_action_50 _2 _4 _6 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_167 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER, _menhir_box_program) _menhir_cell1_params, _menhir_box_program) _menhir_cell1_ARROW _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_IDENTIFIER (_menhir_stack, _7) = _menhir_stack in
      let MenhirCell1_ARROW (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_params (_menhir_stack, _, _4) = _menhir_stack in
      let MenhirCell0_IDENTIFIER (_menhir_stack, _2) = _menhir_stack in
      let MenhirCell1_FN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _8 = _v in
      let _v = _menhir_action_51 _2 _4 _7 _8 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_149 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _2 = _v in
      let _v = _menhir_action_44 _2 in
      _menhir_goto_opt_else _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_opt_else : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_block (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let _4 = _v in
      let _v = _menhir_action_54 _2 _3 _4 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_147 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_s = MenhirState148 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | BANG | BREAK | EOF | FN | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LET | LOOP | MINUS | RBRACE | REF | STRING_LITERAL _ ->
          let _v = _menhir_action_45 () in
          _menhir_goto_opt_else _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          let _v = _menhir_action_45 () in
          let MenhirCell1_block (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_54 _2 _3 _4 in
          _menhir_error_goto_stmt _menhir_stack _v _menhir_s
  
  and _menhir_run_135 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | MUT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | EQUAL ->
                  let _menhir_s = MenhirState138 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | STRING_LITERAL _v ->
                      _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | REF ->
                      _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | MINUS ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LBRACKET ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT_LITERAL _v ->
                      _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | IDENTIFIER _v ->
                      _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | BANG ->
                      _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENTIFIER _v ->
          let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQUAL ->
              let _menhir_s = MenhirState142 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STRING_LITERAL _v ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | REF ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LBRACKET ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT_LITERAL _v ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | IDENTIFIER _v ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BANG ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState145 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQUAL ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState152 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING_LITERAL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | REF ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACKET ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT_LITERAL _v ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IDENTIFIER _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BANG ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | DOUBLECOLON ->
          let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AMP | ANDAND | ANDEQ | BANG | BAR | BREAK | CARET | DIVEQ | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | LSHIFTEQ | MINUS | MINUSEQ | MODEQ | MULTEQ | NEQ | OREQ | OROR | PERCENT | PLUS | PLUSEQ | RBRACE | REF | RSHIFT | RSHIFTEQ | SEMICOLON | SLASH | STAR | STRING_LITERAL _ | XOREQ ->
          let _1 = _v in
          let _v = _menhir_action_11 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _1 = _v in
          let _v = _menhir_action_11 _1 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_155 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENTIFIER _v ->
          let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _menhir_s = MenhirState157 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENTIFIER _v ->
                  _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | RPAREN ->
                  let _v = _menhir_action_47 () in
                  _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_158 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | COLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
                  let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v_0) in
                  let _menhir_s = MenhirState161 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENTIFIER _v ->
                      _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | RPAREN ->
                  let (_1, _3) = (_v, _v_0) in
                  let _v = _menhir_action_43 _1 _3 in
                  _menhir_goto_non_empty_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_non_empty_params : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState157 ->
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState161 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_169 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _1 = _v in
      let _v = _menhir_action_46 _1 in
      _menhir_goto_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_params : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_FN _menhir_cell0_IDENTIFIER as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_params (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState164 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ARROW ->
          let _menhir_stack = MenhirCell1_ARROW (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
              let _menhir_s = MenhirState166 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_162 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
      let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _5 = _v in
      let _v = _menhir_action_42 _1 _3 _5 in
      _menhir_goto_non_empty_params _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_170 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_56 () in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmts : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_207 _menhir_stack _v _tok
      | MenhirState174 ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState133 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_175 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_62 _1 _2 in
      _menhir_goto_stmts _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_172 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_01 _2 in
          _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_203 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DOT _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_05 _1 _3 _5 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_153 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IDENTIFIER as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_53 _1 _3 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | OROR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | DOT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_XOREQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState015 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState038 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SLASH (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState040 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState017 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState042 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUSEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState019 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState044 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PERCENT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OROR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState050 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OREQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState021 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MULTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MODEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState025 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUSEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState048 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSHIFTEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState029 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSHIFT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState058 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState060 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DOT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENTIFIER _v ->
          let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STRING_LITERAL _v_0 ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState072
              | REF ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
              | MINUS ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
              | LBRACKET ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
              | INT_LITERAL _v_1 ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState072
              | IDENTIFIER _v_2 ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState072
              | BANG ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
              | RPAREN ->
                  let _v_3 = _menhir_action_41 () in
                  _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DOT _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_DOT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_05 _1 _3 _5 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DIVEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState031 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CARET (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState062 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState066 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState033 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ANDAND (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AMP (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState064 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | STAR ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | SLASH ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | RSHIFTEQ ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | RSHIFT ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | PLUSEQ ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | PLUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | PERCENT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | OROR ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | OREQ ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | NEQ ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | MULTEQ ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | MODEQ ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | MINUSEQ ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | MINUS ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LSHIFTEQ ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LSHIFT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LEQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LBRACE ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | GEQ ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | EQEQ ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | DOT ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | DIVEQ ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | CARET ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | BAR ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | ANDEQ ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | ANDAND ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | AMP ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_49 _2 _4 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | OROR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | DOT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LET _menhir_cell0_IDENTIFIER as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_52 _3 _5 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | OROR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | DOT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | NEQ | OROR | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_08 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_08 _2 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_130 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_128 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_PERCENT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_PERCENT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_126 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_124 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_SLASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_SLASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_122 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_STAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_STAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_120 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | NEQ | OROR | RBRACE | REF | RSHIFT | SEMICOLON | STRING_LITERAL _ ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_07 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_07 _2 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_119 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_ANDEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_ANDEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_117 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_DIVEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_31 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_DIVEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_31 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_115 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_LSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_36 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_LSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_36 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_113 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_MINUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_MINUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_111 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_MODEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_32 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_MODEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_32 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_109 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_MULTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_30 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_MULTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_30 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_107 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_OREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_OREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_105 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_PLUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_28 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_PLUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_28 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_103 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_RSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_37 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_RSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_37 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_101 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_XOREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_35 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_XOREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_35 _1 _3 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_099 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
      | AMP | ANDAND | BANG | BAR | BREAK | CARET | DOT | EOF | EQEQ | FN | GEQ | IDENTIFIER _ | IF | INT_LITERAL _ | LBRACE | LBRACKET | LEQ | LET | LOOP | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACE | REF | RSHIFT | SEMICOLON | SLASH | STAR | STRING_LITERAL _ ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_06 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_06 _2 in
          _menhir_error_goto_expr _menhir_stack _v _menhir_s
  
  and _menhir_run_085 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_REF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | NEQ | OROR | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_REF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_08 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | NEQ | OROR | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_07 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDAND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | ANDAND | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_ANDAND (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_BAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | ANDAND | BAR | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_BAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_AMP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_AMP (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_CARET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_CARET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_EQEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_EQEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_GEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_GEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_25 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_LEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_24 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | NEQ | OROR | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_LSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_26 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_NEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_NEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_23 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OROR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | COMMA | DOT | LBRACE | OROR | RBRACKET | RPAREN | SEMICOLON ->
          let MenhirCell1_OROR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_13 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PERCENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_PERCENT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_16 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_12 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | NEQ | OROR | RBRACKET | RPAREN | RSHIFT | SEMICOLON ->
          let MenhirCell1_RSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_27 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_SLASH as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_SLASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_15 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_STAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_14 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | SLASH ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PERCENT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | OROR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | DOT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, MenhirState037) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING_LITERAL _v_0 ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState075
          | REF ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | MINUS ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | LBRACKET ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | INT_LITERAL _v_1 ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState075
          | IDENTIFIER _v_2 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState075
          | BANG ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
          | RBRACKET | RPAREN ->
              let _v_3 = _menhir_action_41 () in
              _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 _tok
          | _ ->
              _eRR ())
      | CARET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | BAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | ANDAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | AMP ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | RBRACKET | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_40 _1 in
          _menhir_goto_expr_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_COMMA -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_39 _1 _3 in
      _menhir_goto_expr_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState202 ->
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState005 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState009 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState012 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_034 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_ANDEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_ANDEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_DIVEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_DIVEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_31 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_LSHIFTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_LSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_36 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MINUSEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_MINUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MODEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_MODEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_32 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_MULTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_MULTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_30 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_OREQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_OREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_PLUSEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_PLUSEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_28 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_RSHIFTEQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_RSHIFTEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_37 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_XOREQ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_XOREQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_35 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | RSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | PLUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | OREQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | MULTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | MODEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | MINUSEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | LSHIFTEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | DIVEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | ANDEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | AMP | ANDAND | BAR | CARET | COMMA | DOT | EQEQ | GEQ | LBRACE | LEQ | LSHIFT | MINUS | NEQ | OROR | PERCENT | PLUS | RBRACKET | RPAREN | RSHIFT | SEMICOLON | SLASH | STAR ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_06 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState000 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRING_LITERAL _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | REF ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LOOP ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACKET ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT_LITERAL _v ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FN ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BREAK ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _menhir_error_run_001 _menhir_stack _menhir_s
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
