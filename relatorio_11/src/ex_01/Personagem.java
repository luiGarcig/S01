package ex_01;

public class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public int getIdade() { return idade; }

    @Override
    public String toString() {
        return "Personagem{nome='" + nome + "', idade=" + idade + "}";
    }
}
