from abc import ABC, abstractmethod

class Cibernetico(ABC):

    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:

    def __init__(self, custo:int, funcao:str):
        self.__custo = custo
        self.__funcao = funcao

    def __str__(self):
        return f"{self.__funcao} (custo {self.__custo})"

class NetRunner(Cibernetico):
    def __init__(self, nome:str, custo:int, funcao:str):
        self.__nome = nome
        self.__implante = Implante(custo, funcao)

    def realizar_hack(self):
        return f"{self.__nome} esta realizando o hack com {self.__implante}"
    
    def __str__(self):
        return f"Netrunner {self.__nome}"

class Faccao:   

    def __init__(self, nome:str, membros: list[Cibernetico]):
        self.__nome = nome
        self.__membros = membros

    def get_membros(self):
        return self.__membros

if __name__ == "__main__":

    v = NetRunner("v", 1000, "Ram Reallocator")
    lucy = NetRunner("lucy", 2000, "Memory boost")
    kiwi = NetRunner("kiwi", 3000, "Canto Mk.6")

    maelstrom = Faccao("Maelstron", [v,lucy,kiwi] )
    for membro in maelstrom.get_membros():
        print(membro.realizar_hack())
