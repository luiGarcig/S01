
using System;
using System.Collections.Generic;

public class MembroDaSociedade
{
	private string nome{get; set;}
	private string raca{get; set;}
	private string funcao{get; set;}

	public MembroDaSociedade(string nome, string raca, string funcao){
		this.nome = nome;
		this.raca = raca;
		this.funcao = funcao;
	}

	public void descrever(){
		Console.WriteLine($"nome: {nome}\n");
		Console.WriteLine($"raca: {raca}\n");
		Console.WriteLine($"funcao: {funcao}\n");
		Console.WriteLine();

	}
}




public class ex01
{
	public static void Main(string[] args) {
		MembroDaSociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardiao");
		MembroDaSociedade legolas = new MembroDaSociedade("legolas", "elfo", "arqueiro");

		aragorn.descrever();
		legolas.descrever();
	}
}

