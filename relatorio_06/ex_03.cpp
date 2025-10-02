#include<iostream>
#include<string>

class Pessoa{
protected:
	std::string nome;

public:
	Pessoa(std::string nome){
		this->nome = nome;
	}

	virtual void apresentar(){
		std::cout << "Ola, meu nome e " << nome << " e eu sou uma pessoa" << std::endl;
	}
};

class Professor: public Pessoa{
private:
	std::string disciplina;

public:
	Professor(std::string disciplina): Pessoa("Marcelo"){
		this->disciplina = disciplina;
	}
	
	void apresentar() override{
		std::cout << "Ola, meu nome e " << nome << " e eu sou professor de " << disciplina << std::endl;
	}

};

class Aluno: public Pessoa{
private:
	std::string curso;
	int matricula;
public:
	Aluno(
		std::string curso,
		int matricula
	): Pessoa("Luis"){
		this->curso = curso;
		this->matricula = matricula;
	}

	void apresentar() override{
		std::cout << "Ola, meu nome e " << nome << " e eu sou aluno de " << curso << std::endl;
	}

};

int main(){

	Pessoa* prof = new Professor("S01");
	Pessoa* aluno = new Aluno("GES", 619);
	
	prof->apresentar();
	aluno->apresentar();

	delete prof;
	delete aluno;


	return 0;
}
