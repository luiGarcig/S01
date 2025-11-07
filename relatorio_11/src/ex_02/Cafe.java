package ex_02;

public class Cafe {
    private String nome;
    private double precoBase;

    public Cafe(String nome, double precoBase) {
        this.nome = nome;
        this.precoBase = precoBase;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public double getPrecoBase() { return precoBase; }

    public double calcularPrecoFinal() {
        return precoBase;
    }

    @Override
    public String toString() {
        return String.format("%s (R$ %.2f)", nome, calcularPrecoFinal());
    }
}
