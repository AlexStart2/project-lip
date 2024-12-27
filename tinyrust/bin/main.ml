open TinyrustLib.Lexer
open TinyrustLib.Parser
open TinyrustLib.Interpreter
(* open Lexing *)

let parse input =
  let lexbuf = Lexing.from_string input in
  try
    program tokenize lexbuf
  with
  | Error -> failwith "Syntax error"



let () =
  let input = {|

fn main() {
  let x=2;
  let y=-2;
  println!("{y}");
}

  |} in
  let ast = parse input in
  let _ = exec_program ast in ()

(* let to_string = function
  | EOF -> "EOF"
  | _ -> "Unknown token"

  let () =
  (* Example input to test the lexer *)
  let input = {|
fn main() {
    let x = 2; // prima dichiarazione di x
    let x = x + 1; // seconda dichiarazione di x
    {
        let x = x * 2; // terza dichiarazione di x
        println!("{x}"); // output: 6
    }
    println!("{x}"); // output: 3
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
  in process_tokens lexbuf *)