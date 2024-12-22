open TinyrustLib.Lexer
open TinyrustLib.Ast
open Lexing


let () =
  (* Example input to test the lexer *)
  let input = {|
    let x = 42;
    fn main() {
      let y = "Hello, world!";
      if x == 42 {
        loop {
          break;
        }
      }
    }
  |} in

  (* Create a lexing buffer from the input string *)
  let lexbuf = from_string input in

  (* Helper function to process and print tokens *)
  let rec process_tokens lexbuf =
    match tokenize lexbuf with
    | EOF -> print_endline (to_string EOF)  (* Print EOF and stop *)
    | token ->
        let token_str = TinyrustLib.Lexer.token_to_string token in
        print_endline token_str;           (* Print the token *)
        process_tokens lexbuf              (* Continue processing *)

  (* Process tokens from the lexing buffer *)
  in process_tokens lexbuf
