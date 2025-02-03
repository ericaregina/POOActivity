public class Main {
    public static void main(String[] args) {
        Cliente cliente = new Cliente("Érica", "123.456.789-00");
        Conta conta = new Conta(cliente);
        Transacao transacao = new Transacao(500.0);

        System.out.println("Titular da conta: " + conta.getTitular().getNome());
        transacao.realizarTransacao(conta);

        System.out.println("Saldo atual: " + conta.consultarSaldo());

        conta.sacar(200);
        System.out.println("Saldo após saque: " + conta.consultarSaldo());
    }
}
