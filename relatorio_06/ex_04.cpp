#include<iostream>
#include<string>
#include<list>

class SerVivo{
protected:
	std::string nome;
public:
	SerVivo(std::string nome){
		this->nome = nome;
	}

	virtual void apresentar(){
		std::cout << "raca : " << nome << std::endl;
	}
};

class Humano: public SerVivo{
public:
	Humano(): SerVivo("Humano") {}

	void apresentar() override{
		std::cout << "Nos somos os " << nome << std::endl;
	}
};

class Elfo: public SerVivo{
public:
	Elfo(): SerVivo("Elfo") {}

	void apresentar() override{
		std::cout << "Nos somos os " << nome << std::endl;
	}

};

class Fada: public SerVivo{
public:
	Fada(): SerVivo("Fada") {}

	void apresentar() override{
		std::cout << "Nos somos os " << nome << std::endl;
	}

};

int main(){

	SerVivo* hum = new Humano();
	SerVivo* elf = new Elfo();
	SerVivo* fad = new Fada();

	std::list<SerVivo*> racas;
	racas.push_back(hum);
	racas.push_back(elf);
	racas.push_back(fad);

	for(SerVivo* raca: racas){
		raca->apresentar();
	}

	delete hum;
	delete elf;
	delete fad;

	return 0;
}
