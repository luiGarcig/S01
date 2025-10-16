class Personagem:
 
    def __init__(self, vida: int, resistencia: int):
        self.__vida = vida
        self.__resistencia = resistencia

    def __str__(self):
        return f"personagem com {self.__vida} de vida e {self.__resistencia} resistencia"

    def get_vida(self):
        return self.__vida

    def set_vida(self, nova_vida):
        if nova_vida > 0:
            self.__vida = nova_vida
        else:
            print("valor invalido")

    def get_resistencia(self):
        return self.__resistencia

    def set_resistencia(self, nova_resistencia):
        if nova_vida > 0:
            self.__vida = nova_vida
        else:
            print("valor invalido")

class Cavaleiro(Personagem):

    def __init__(self, vida:int, resistencia:int, armadura_pesada:bool):
        super().__init__(vida, resistencia)
        self.__armadura_pesada = armadura_pesada

    def __str__(self):
        if self.__armadura_pesada == True:
            return f"personagem com {self.get_vida()} de vida, {self.get_resistencia()} resistencia e esta com armadura pesada"
        else:
            return f"personagem com {self.get_vida()} de vida, {self.get_resistencia()} resistencia"


if __name__ == "__main__":

    personagem = Personagem(100, 25)

    print(personagem)

    cavaleiro = Cavaleiro(120, 40, True)

    print(cavaleiro)

