package ex_03;

public abstract class Entidade implements IRastreavel {
    private String nome;
    private String localizacao;
    private Poder poder;

    protected Entidade(String nome, String localizacao, Poder poder) {
        this.nome = nome;
        this.localizacao = localizacao;
        this.poder = poder;
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }


    @Override
    public String obterCoordenadas() {
        return localizacao;
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() +
                "{nome='" + nome + "', local='" + localizacao + "', poder=" + poder + "}";
    }
}
