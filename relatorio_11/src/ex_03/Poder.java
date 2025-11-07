package ex_03;

public class Poder {
    private String nome;

    public Poder(String nome) {
        this.nome = nome;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    @Override
    public String toString() {
        return "Poder{" + nome + "}";
    }
}
