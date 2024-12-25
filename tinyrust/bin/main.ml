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
    let x = 2; // prima dichiarazione di x
    let x = x + 1; // seconda dichiarazione di x
    {
        let x = x * 2; // terza dichiarazione di x
        println!("{x}"); // output: 6
    }
    println!("{x}"); // output: 3
}
  |} in
  let ast = parse input in
  print_endline "Program parsed successfully!";
  exec_program ast
