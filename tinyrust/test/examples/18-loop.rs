fn main () {
  let mut y = 0;
  loop {
    y = 1+y;
    println!("{y}");
    if y == 5 {
      break;
    }
  }
}