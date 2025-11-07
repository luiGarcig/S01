package ex_01;

public class Divisao {

    private String nome;

    public Divisao(String nome) {
        this.nome = nome;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    @Override
    public String toString() {
        return "Divisao{nome='" + nome + "'}";
    }

    @Override
    public int hashCode() {
        return nome == null ? 0 : nome.toLowerCase().hashCode();
    }

}
