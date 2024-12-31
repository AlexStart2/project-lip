open TinyrustLib.Lexer
open TinyrustLib.Parser
open TinyrustLib.Interpreter
(* open Lexing *)

let parse input =
  let lexbuf = Lexing.from_string input in
  try
    program tokenize lexbuf
  with
  | Error ->
      let _ = lexbuf.lex_curr_p in
      failwith (Printf.sprintf "Syntax error")

let () =
  let input = {|
fn main() {
  let mut y = 4;
  fn scopecheck () {
      y = 6; // errore 
  }
  y = 3+y;
}

  |} in
  let ast = parse input in
  let _ = exec_program ast in ()