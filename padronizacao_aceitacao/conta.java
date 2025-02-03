public class Conta {
    private double saldo;
    private Cliente titular;

    public Conta(Cliente titular) {
        this.saldo = 0.0;
        this.titular = titular;
    }

    public void depositar(double valor) {
        if (valor > 0) {
            saldo += valor;
            System.out.println("Depósito de " + valor + " realizado.");
        }
    }

    public void sacar(double valor) {
        if (valor <= saldo) {
            saldo -= valor;
            System.out.println("Saque de " + valor + " realizado.");
        } else {
            System.out.println("Saldo insuficiente.");
        }
    }

    public double consultarSaldo() {
        return saldo;
    }

    public Cliente getTitular() {
        return titular;
    }
}
