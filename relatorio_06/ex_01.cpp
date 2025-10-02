#include<iostream>
#include<locale.h>
#include<list>
#include <string>

class Personagem{
public:
	std::string nome;
	int nivel;
	int dano;
	int vida;

	Personagem(
		std::string nome, 
		int nivel, 
		int dano, 
		int vida
	){
		this->nome = nome;
		this->nivel = nivel;
		this->dano = dano;
		this->vida = vida;
	}

	void atacar(Personagem& personagem){
		
		std::cout<<"Personagem " << nome << " atacou " << personagem.nome<< ", causando " << dano << " pontos de vida" << std::endl;
		std::cout<<"Vida atual de "<< personagem.nome << " : " << personagem.vida - dano << std::endl;
	}

};

int main(){

	Personagem personagem1("chosen undead", 1, 10, 100); 
	Personagem personagem2("Artorias", 10, 50, 750);

	personagem1.atacar(personagem2);
	personagem2.atacar(personagem1);

	return 0;

}
