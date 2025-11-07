package ex_02;

public class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double precoBase, double bonusAroma) {
        super(nome, precoBase);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPrecoBase() + bonusAroma;
    }
}
