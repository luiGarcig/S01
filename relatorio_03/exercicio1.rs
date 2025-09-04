use std::io;

fn main() {
    println!("Digite sua senha: ");
    let mut senha = String::new();
    io::stdin().read_line(&mut senha).expect("Falha ao ler a entrada");

    while !verificar_senha(senha.trim()){
      println!("Senha invalida, digite novamente: ");
      senha.clear();
      io::stdin().read_line(&mut senha).expect("Falha ao ler a entrada");
    }
  println!("Senha valida! acesso concedido");

}

fn verificar_senha(senha: &str) -> bool{
  let tamanho = senha.len() >= 8;
  let digito = senha.chars().any(|c| c.is_digit(10));
  let maiuscula = senha.chars().any(|c| c.is_ascii_uppercase());

  tamanho && digito && maiuscula
}
