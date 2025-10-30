class IExplorador {
	explorarTerritorio() {
        	throw new Error(`O territorio deve ser explorado`);
    	}
}

class ODM_gear{
	#gasRestante 

	constructor(modelo){
		this.modelo = modelo
		this.#gasRestante = 100
	}

	usarGas(quantidade){
		this.#gasRestante -= quantidade
	}

	getGas(){
		return this.#gasRestante
	}
}

class Soldado extends IExplorador{

	#gear

	constructor(nome, modeloGear){
		super()
		this.nome = nome
		this.#gear = new ODM_gear(modeloGear)
	}

	explorarTerritorio(){
		this.#gear.usarGas(15)
		return `Soldado ${this.nome} explorou a área. Gás restante: ${this.#gear.getGas()}%`
	}
	
	verificarEquipamento(){
		return `Gear ${this.#gear.modelo} do soldado ${this.nome} está com ${this.#gear.getGas()}% de gas restante`
	}
	
}

class Esquadrao extends IExplorador{
	constructor(lider, membrosIniciais = []){
		super()
		this.lider = lider
		this.membros = [lider, ...membrosIniciais]
	}

	explorarTerritorio(){
		const relatorio = this.membros.map(m => m.explorarTerritorio())
    		return `Relatorio:\n- ${relatorio.join("\n- ")}`

	}

	adicionarMembro(soldado){
		this.membros.push(soldado)
	}

	relatarStatus(){
		return this.membros.map(m => m.verificarEquipamento())
	}
}

const eren = new Soldado("Eren", "Mk-II");
const mikasa = new Soldado("Mikasa", "Mk-II");
const armin = new Soldado("Armin", "Mk-I");

const esquadrao = new Esquadrao(eren, [mikasa]);

console.log(esquadrao.relatarStatus());
console.log(esquadrao.explorarTerritorio());
console.log(esquadrao.relatarStatus());

esquadrao.adicionarMembro(armin);
console.log("membro adicionado")

console.log(esquadrao.relatarStatus());
console.log(esquadrao.explorarTerritorio());
console.log(esquadrao.relatarStatus());
