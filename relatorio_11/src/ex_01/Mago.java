package ex_01;

public class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String lancarFeitico() {
        return getNome() + " lança o feitiço: " + magia + "!";
    }

    @Override
    public String toString() {
        return "Mago{nome='" + getNome() + "', idade=" + getIdade() +
                ", magia='" + magia + "'}";
    }
}
