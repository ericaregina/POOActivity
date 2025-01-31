// Classe base (superclasse)
class Animal {
  String nome;

  Animal(this.nome);

  void fazerSom() {
    print("$nome faz um som genérico.");
  }
}

// Subclasse Cachorro
class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void fazerSom() {
    print("$nome late: Au Au!");
  }
}

// Subclasse Gato
class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void fazerSom() {
    print("$nome mia: Miau!");
  }
}

void main() {
  // Criando uma lista de animais com diferentes tipos
  List<Animal> animais = [
    Cachorro("Rex"),
    Gato("Mia"),
    Animal("Criatura Misteriosa")
  ];

  // Usando polimorfismo: chamamos o mesmo método, mas o comportamento muda
  for (var animal in animais) {
    animal.fazerSom(); // O comportamento depende da classe real do objeto
  }
}
