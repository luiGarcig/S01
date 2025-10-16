class ArmaCorpoACorpo:

    def __init__(self, nome:str):
        self.__nome = nome

    def __str__(self):
        return f"{self.__nome}"

class PhantomThieves:
    
    def __init__(self, nome:str, arma: ArmaCorpoACorpo):
        self.__nome = nome
        self.__arma = arma

    def __str__(self):
        return f"{self.__nome} (arma: {self.__arma})"

class Joker:
    def __init__(self, membros: list[PhantomThieves]):
        self.__arma = ArmaCorpoACorpo("faca")
        self.__membros = membros

    def mostrar_equipe(self):
        print(f"joker empunha {self.__arma}")
        for membro in self.__membros:
            print(membro)

if __name__ == "__main__":

    arma1 = ArmaCorpoACorpo("Estilingue")
    arma2 = ArmaCorpoACorpo("Katana")

    ryuji = PhantomThieves("Ryuji", arma1)
    morgana = PhantomThieves("Morgana", arma2)

    equipe = [ryuji, morgana]

    joker = Joker(equipe)
    joker.mostrar_equipe()
