// Classe base (superclasse)
class Animal {
  String nome;

  Animal(this.nome);

  void fazerSom() {
    print("$nome faz um som.");
  }
}

// Classe derivada (subclasse)
class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  // Sobrescrevendo o método da superclasse
  @override
  void fazerSom() {
    print("$nome late: Au Au!");
  }
}

void main() {
  Animal animal = Animal("Animal Genérico");
  animal.fazerSom();

  Cachorro cachorro = Cachorro("Rex");
  cachorro.fazerSom();
}
