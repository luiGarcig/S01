package ex_04;

import java.util.LinkedHashSet;

public class Boss {
    private String nome;
    private String idBoss;
    private String pontoFraco;
    private final LinkedHashSet<PadraoAtaque> moveset = new LinkedHashSet<>();

    public Boss(String nome, String id, String fracoContra) {
        this.nome = nome;
        this.idBoss = id;
        this.pontoFraco = fracoContra;
    }

    public String getNome() { return nome; }
    public String getIdBoss() { return idBoss; }

    public void adicionarAtaque(PadraoAtaque ataque) {
        if ( ataque != null ) moveset.add(ataque);
    }

    public void iniciarFase() {
        System.out.println("=== Fase do Boss: " + nome + " (id " + idBoss + ") ===");
        System.out.println("Ponto fraco: " + pontoFraco);
        System.out.println("Moveset:");
        for (PadraoAtaque a : moveset) {
            System.out.println(" - " + a);
        }
        System.out.println("Prepare-se para a batalha!\n");
    }
}
