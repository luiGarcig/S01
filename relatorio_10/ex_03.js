class Criatura{
	constructor(nome, perigosa){
		this.nome = nome
		this.perigosa = perigosa
	}
}

class Diario{
	#autorSecreto
	enigmas
	criaturasAvistadas

	constructor(autor){
		this.#autorSecreto = autor
		this.enigmas = new Map()
		this.criaturasAvistadas = [] 
	}

	getAutor(){
		return this.#autorSecreto
	}

	adicionarEnigma(num, enigma){
		this.enigmas.set(num, enigma)
	}

	decodificar(chave, num){
		if(chave !== this.#autorSecreto){
			return `permissão negada`
		}

		const enigma = this.enigmas.get(num)
		if(!enigma){
			return `Nenhum enigma com este numero encontrado`
		}
		return `Decodificador (${chave}): ${enigma.split("").reverse().join("")}`
	}
}

class Personagem{
	constructor(nome, idade){
		this.nome = nome
		this.idade = idade
	}
}

class Protagonista extends Personagem{
	diario

	constructor(nome, idade, diario){
		super(nome, idade)
		this.diario = diario
	}
}

class CabanaMisterio{
	#funcionarios

	constructor(diario){
		this.diario = diario
		this.visitantes = []
		this.#funcionarios = []
	}

	contratar(personagem){
		this.#funcionarios.push(personagem)
	}

	listarFuncionarios(){
		return [...this.#funcionarios]
	}
}


 const diario = new Diario("Dipper");
  diario.adicionarEnigma(1, "waddles found");
  diario.adicionarEnigma(2, "bill cipher returns");

  const dipper = new Protagonista("Dipper", 12, diario);
  const mabel  = new Personagem("Mabel", 12);
  const soos   = new Personagem("Soos", 22);
  const wendy  = new Personagem("Wendy", 15);

  const cabana = new CabanaMisterio(diario);
  cabana.contratar(soos);
  cabana.contratar(wendy);

  console.log("Funcionários:", cabana.listarFuncionarios().map(f => f.nome));
  console.log("Decodificar errado:", diario.decodificar("errada", 1));
  console.log("Decodificar certo:",  diario.decodificar("Dipper", 1));

