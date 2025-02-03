import java.util.Date;

public class Transacao {
    private Date data;
    private double valor;

    public Transacao(double valor) {
        this.valor = valor;
        this.data = new Date();
    }

    public void realizarTransacao(Conta conta) {
        conta.depositar(valor);
        System.out.println("Transação realizada na data " + data.toString() + " de valor: " + valor);
    }
}
