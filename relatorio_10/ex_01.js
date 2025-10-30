class Pokemon{
	#vida

	constructor(nome, tipo, vidaInicial) {
		this.nome = nome;
		this.tipo = tipo;
		this.#vida = vidaInicial;
	}

	getVida(){
		return this.#vida
	}

	receberDano(dano) {
		if (this.#vida - dano > 0){
			this.#vida -= dano
		}else{
			this.#vida = 0
		}
		return this.#vida
	}

	atacar(alvo){
		console.log("pokemon ", this.nome, "atacou " , alvo.nome)
	}
}

class PokemonFogo extends Pokemon{
	constructor(nome, vidaInicial, bonus) {
		super(nome, "Fogo", vidaInicial);
		this.bonusAtaque = bonus;
	}
	
	atacar(alvo){
		console.log("pokemon ", this.nome, "utilizou Flame Charge em " , alvo.nome)
		alvo.receberDano(110 + this.bonusAtaque)
	}
}

class PokemonAgua extends Pokemon{

	#curaBase

	constructor(nome, vidaInicial, curaBase) {
		super(nome, "Agua", vidaInicial);
		this.#curaBase = curaBase;
	}

	atacar(alvo){
    		console.log(`${this.nome} utilizou Hydro Pump em ${alvo.nome}!`);
		alvo.receberDano(80*1.5)
	}
}

const squirtle = new PokemonAgua("Blastoise", 220, 5);
const charmander = new PokemonFogo("Charizard", 200, 3);

squirtle.atacar(charmander);
console.log("Vida do Charmander:", charmander.getVida());
