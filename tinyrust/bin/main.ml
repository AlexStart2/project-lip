(* open TinyrustLib.Lexer
open TinyrustLib.Parser

let parse input =
  let lexbuf = Lexing.from_string input in
  try
    program tokenize lexbuf
  with
  | Error -> failwith "Syntax error"

let print_tokens input =
  let lexbuf = Lexing.from_string input in
  let rec aux () =
    match tokenize lexbuf with
    | EOF -> print_endline "EOF"
    | token ->
        print_endline (token_to_string token);
        aux ()
  in
  aux ()

let () =
  let input = {|
      fn main() {
  let mut x = String::from("Ciao");
  x.push_str(", mondo");
  println!("x is: {x}");
}

  |} in

  (* Step 1: Print tokens *)
  print_endline "Tokens:";
  print_tokens input;

  (* Step 2: Parse the program *)
  print_endline "\nParsing program:";
  let _ = parse input in
  print_endline "Program parsed successfully!" *)

open TinyrustLib.Lexer
open TinyrustLib.Parser
open TinyrustLib.Interpreter

let parse input =
  let lexbuf = Lexing.from_string input in
  try
    program tokenize lexbuf
  with
  | Error -> failwith "Syntax error"

let () =
  let input = {|
fn main() {
    let x = 3; // variabile immutabile di tipo intero
    let y = x + 1; // idem
    println!("{x}"); // output: 3
    println!("{y}"); // output: 4
}
  |} in
  let ast = parse input in
  print_endline "Program parsed successfully!";
  exec_program ast
