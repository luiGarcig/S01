use std::io;

fn main() {
    println!("Jogador 1: par ou ímpar?");
    let mut par_impar = String::new();
    io::stdin()
        .read_line(&mut par_impar)
        .expect("Falha ao ler a entrada");

    while par_impar.trim() != "par" && par_impar.trim() != "impar" {
        println!("Valor invalido, tente novamente:");
        par_impar.clear();
        io::stdin()
            .read_line(&mut par_impar)
            .expect("Falha ao ler a entrada");
    }

    println!("Jogador 1: digite seu número: ");
    let mut entrada1 = String::new();
    io::stdin()
        .read_line(&mut entrada1)
        .expect("Falha ao ler a entrada");
    let num_jogador1: i32 = entrada1.trim().parse().expect("Número inválido");

    println!("Jogador 2: digite seu número: ");
    let mut entrada2 = String::new();
    io::stdin()
        .read_line(&mut entrada2)
        .expect("Falha ao ler a entrada");
    let num_jogador2: i32 = entrada2.trim().parse().expect("Número inválido");

    let soma = num_jogador1 + num_jogador2;

    let resultado: &str;
    if (eh_par(soma) && par_impar.trim() == "par") || (!eh_par(soma) && par_impar.trim() == "impar")
    {
        resultado = "Jogador 1 venceu!";
    } else {
        resultado = "Jogador 2 venceu!";
    }

    println!("O {}, a soma dos numeros foi {}", resultado, soma);
}

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

