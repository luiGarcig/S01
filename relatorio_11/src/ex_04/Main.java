package ex_04;

public class Main {
    public static void main(String[] args) {
        BossMagico merlim = new BossMagico("Merlim Sombrio", "1", "magia de luz");
        merlim.adicionarAtaque(new PadraoAtaque("Bola Sombria", 30));
        merlim.adicionarAtaque(new PadraoAtaque("Chuva de Cometas", 45));
        merlim.adicionarAtaque(new PadraoAtaque("Círculo Arcano", 50));

        Boss golem = new Boss("Golem Ancestral", "2", "elemento água");
        golem.adicionarAtaque(new PadraoAtaque("Soco Sísmico", 40));
        golem.adicionarAtaque(new PadraoAtaque("Queda de Rocha", 35));

        Batalha encontro = new Batalha(null);
        encontro.adicionarBoss(merlim);
        encontro.adicionarBoss(golem);

        encontro.iniciarBatalha("1");
        encontro.iniciarBatalha("2");
        encontro.iniciarBatalha("404");
    }
}
