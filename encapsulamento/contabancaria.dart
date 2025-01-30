class ContaBancaria {
  // Atributos
  String titular;
  double _saldo;

  // Construtor
  ContaBancaria(this.titular, this._saldo);

  // Getter para acessar o saldo
  double get saldo => _saldo;

  // Método para depositar dinheiro
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print("Depósito de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
    } else {
      print("O valor do depósito deve ser maior que zero.");
    }
  }

  // Método para sacar dinheiro
  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado com sucesso.");
    } else if (valor <= 0) {
      print("O valor do saque deve ser maior que zero.");
    } else {
      print("Saldo insuficiente para realizar o saque.");
    }
  }

  // Método para exibir as informações da conta
  void exibirInformacao() {
    print("Titular: $titular");
    print("Saldo atual: R\$${_saldo.toStringAsFixed(2)}");
  }
}

void main() {
  // Criando uma instância da conta bancária
  var conta = ContaBancaria("João Silva", 1000.0);

  // Exibindo as informações da conta
  conta.exibirInformacao();

  // Realizando um depósito
  conta.depositar(500.0);
  conta.exibirInformacao();

  // Realizando um saque válido
  conta.sacar(300.0);
  conta.exibirInformacao();

  // Tentando realizar um saque inválido (saldo insuficiente)
  conta.sacar(1500.0);
}
