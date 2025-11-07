package ex_03;

public class Alien extends Entidade {
    private String planetaOrigem;
    private String ovni;

    public Alien(String nome, String localizacao, String planetaOrigem, String ovni, String poderNome) {
        super(nome, localizacao, new Poder(poderNome));
        this.planetaOrigem = planetaOrigem;
        this.ovni = ovni;
    }

    @Override
    public String toString() {
        return super.toString() + " [planeta=" + planetaOrigem + ", ovni=" + ovni + "]";
    }
}
