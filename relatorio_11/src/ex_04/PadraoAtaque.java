package ex_04;

public class PadraoAtaque {
    private String nome;
    private int dano;

    public PadraoAtaque(String nome, int dano) {
        this.nome = nome;
        this.dano = dano;
    }

    public String getNome() { return nome; }

    @Override
    public String toString() {
        return nome + " (dano " + dano + ")";
    }
}
