package ex_01;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 27, "Portal de Chamas Azuis");

        Divisao cozinha = new Divisao("Cozinha");
        Divisao sala = new Divisao("Sala de Estar");

        Castelo castelo = new Castelo("Castelo Animado", Arrays.asList(cozinha));
        castelo.adicionarDivisao(sala);
        castelo.adicionarDivisao(new Divisao("Terraço"));
        castelo.adicionarDivisao(sala);

        System.out.println(howl);
        System.out.println(howl.lancarFeitico());
        System.out.println(castelo);
    }
}