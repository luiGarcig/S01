package ex_03;

public class Main {
    public static void main(String[] args) {
        Alien zetax = new Alien("Zetax", "35.7,-120.9", "Zeta Reticuli", "Disco-77", "Telepatia");
        Youkai kitsune = new Youkai("Kitsune", "34.7,135.5", "Ilusão de Fogo");

        Registros r = new Registros("Detetives Ocultos");
        System.out.println(r.registrarAvistamento(zetax, zetax.getNome()));
        System.out.println(r.registrarAvistamento(kitsune, kitsune.getNome()));
        System.out.println(r.registrarAvistamento(kitsune, "Kitsune"));

        System.out.println(r);
        System.out.println("Coord Kitsune: " + kitsune.obterCoordenadas());
    }
}
