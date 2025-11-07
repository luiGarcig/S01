package ex_03;

public class Youkai extends Entidade {
    public Youkai(String nome, String localizacao, String poderNome) {
        super(nome, localizacao, new Poder(poderNome));
    }
}
