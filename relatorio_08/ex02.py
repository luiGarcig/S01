from abc import ABC, abstractmethod

class Heroi(ABC):

    def __init__(self, nome:str, funcao: str):
        self.__nome = nome
        self.__funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass
    def __str__(self):
        return f"{self.__nome} ({self.__funcao})"

class Tanque(Heroi):

    def __init__(self, nome:str):
        super().__init__(nome, "tanque")

    def usar_ultimate(self):
        return f"{self} usou ultimate para proteger o time"

class Dano(Heroi):
    
    def __init__(self, nome:str):
        super().__init__(nome, "dano")

    def usar_ultimate(self):
        return f"{self} usou a ultimate para causar dano"


if __name__ == "__main__":


    tanque = Tanque("Roadhog")
    dano = Dano("Tracer")
    herois: list[Heroi] = [tanque, dano]

    for heroi in herois:
        print(heroi.usar_ultimate())
