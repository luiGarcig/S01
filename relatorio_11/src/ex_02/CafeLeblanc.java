package ex_02;

public class CafeLeblanc {
    private final Menu _menu;

    public CafeLeblanc(Menu menu) {
        if (menu == null) throw new IllegalArgumentException("Menu não pode ser nulo.");
        this._menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        System.out.printf("Pedido recebido: %s | Preço: R$ %.2f%n",
                cafe.getNome(), cafe.calcularPrecoFinal());
    }
}
