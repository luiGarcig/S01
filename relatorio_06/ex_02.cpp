#include <iostream>
#include <string>


class Pessoa{
protected:
	std::string nome;
	int idade;
public:
	Pessoa(
		std::string nome,
		int idade
	){
		this->nome = nome;
		this->idade = idade;
	}

	virtual void mostrarDados() const {
        	std::cout << "nome: " << nome << ", idade: " << idade;
    	}
};

class Protagonista: public Pessoa{
private:
	int nivel;

public:
	Protagonista(int nivel): Pessoa("Makoto Yuki", 18){
		this->nivel = nivel;
	}

	void mostrarNivel(){
		mostrarDados();
		std::cout << ", nivel : " << nivel << std::endl;
	}
};

class Personagem: public Pessoa{
private:
	int rank;

public:
	Personagem(int rank): Pessoa("Yukari Takeba", 17){
		this->rank = rank;
	}

	virtual void mostrarRank(){
		mostrarDados();
		std::cout << ", rank : " << rank << std::endl;
	}
};


int main(){
	Protagonista prot(1);
	Personagem pers(1);

	prot.mostrarNivel();
	pers.mostrarRank();

	return 0;
}
