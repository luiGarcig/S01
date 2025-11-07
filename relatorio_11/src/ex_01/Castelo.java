package ex_01;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Castelo {

    private String nome;
    private ArrayList<Divisao> divisoes;

    public Castelo(String nome, List<Divisao> divisoes) {
        this.nome = nome;
        this.divisoes = new ArrayList<>();
    }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public boolean adicionarDivisao(Divisao divisao) {
        if (divisao == null) return false;
        if (!divisoes.contains(divisao)) {
            return divisoes.add(divisao);
        }
        return false;
    }

    @Override
    public String toString() {
        return "Castelo{nome='" + nome + "', divisoes=" + divisoes + "}";
    }

}
