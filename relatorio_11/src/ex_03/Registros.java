package ex_03;

import java.util.HashMap;
import java.util.Map;

public class Registros {
    private String nomeEquipe;
    private final Map<String, Entidade> avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>();
    }

    public boolean registrarAvistamento(Entidade entidade, String nome) {
        if (entidade == null || nome == null || nome.isBlank()) return false;
        if (avistamentos.containsKey(nome)) return false;
        avistamentos.put(nome, entidade);
        return true;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("Equipe " + nomeEquipe + " - Avistamentos:\n");
        for (var e : avistamentos.entrySet()) {
            sb.append(" - ").append(e.getKey()).append(": ").append(e.getValue()).append('\n');
        }
        return sb.toString();
    }
}
