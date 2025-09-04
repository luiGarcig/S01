use std::io;

fn main() {
  println!("Digite um numero: ");
  let mut numero = String::new();
  io::stdin().read_line(&mut numero).expect("Falha ao ler o numero");

  println!("Digite o limite_inferior: ");
  let mut limite_inferior = String::new();
  io::stdin().read_line(&mut limite_inferior).expect("Falha ao ler o numero");

  println!("Digite o limite_superior: ");
  let mut limite_superior = String::new();
  io::stdin().read_line(&mut limite_superior).expect("Falha ao ler o numero");
  
  while limite_superior.trim().parse::<i32>().unwrap() <= limite_inferior.trim().parse::<i32>().unwrap(){
    println!("Digite um limite_superior maior: ");
    limite_superior = String::new();
    io::stdin().read_line(&mut limite_superior).expect("Falha ao ler o numero");
  }

  imprimir_tabuada(numero.trim().parse::<i32>().unwrap(), limite_inferior.trim().parse::<i32>().unwrap(), limite_superior.trim().parse::<i32>().unwrap());
  
}

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32){
  for i in limite_inferior..limite_superior+1{
    println!("{} X {} = {} ", numero, i,  numero * i);
  }
}
