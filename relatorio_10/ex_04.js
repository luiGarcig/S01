class IRastreavel{
	rastrearLocal(latitude, longitude){
		throw new Error(`Esta funcao deve ser implementada`)
	}
}

class Hunter extends IRastreavel{
	#nome
	#idade
	#localizacao

	constructor(nome, local, idade)
	{
		super()
		this.#nome = nome
		this.#localizacao = local
		this.#idade = idade
	}
  	
	getNome() { 
		return this.#nome 
	}

	setLocalizacao(lat, lon) { this.#localizacao = `${lat},${lon}`; }
}

class Especialista extends Hunter{
	#habilidadeNen

	constructor(nome, local, idade, habilidade)
	{
		super(nome, local, idade)
		this.#habilidadeNen = habilidade
	}

	rastrearLocal(latitude, longitude){
		this.setLocalizacao(latitude, longitude)
    		return `Especialista ${this.getNome()} rastreou (${latitude},${longitude}) usando Nen: ${this.#habilidadeNen}`;
	}
}

class Manipulador extends Hunter{
	#alvoAtual

	constructor(nome, local, idade, alvo)
	{
		super(nome, local, idade)
		this.#alvoAtual = alvo
	}

	rastrearLocal(latitude, longitude){
		this.setLocalizacao(latitude, longitude)
    		return `Manipulador ${this.getNome()} rastreou (${latitude},${longitude}) o hunter ${this.#alvoAtual} `;
	}
}

class Batalhao{
	#hunters

	constructor(){
		this.#hunters = new Set()
	}

	adicionarHunter(hunter){
		for(let h of this.#hunters){
			if(h.getNome() === hunter.getNome()){
				console.log("Hunter duplicado")
				return
			}
		}
		this.#hunters.add(hunter)
	}

	getNumHunters(){
		return this.#hunters.size
	}

	iniciarRastreamento(latitude, longitude){
		const result = []
		for(let h of this.#hunters){
			result.push(h.rastrearLocal(latitude, longitude))
		}
		return result;
	}
}

const gon    = new Especialista("Gon", "Montanha", 14, "Jajanken");
const hisoka = new Manipulador("Hisoka", "Arena", 28, "Illumi");
const b = new Batalhao();

b.adicionarHunter(gon);
b.adicionarHunter(hisoka);
b.adicionarHunter(gon); // duplicado

console.log(b.iniciarRastreamento(-23.56, -46.64));
