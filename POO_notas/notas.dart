import 'dart:io';

/// Função para definir a classificação do aluno com base na média.
/// Retorna "Aprovado", "Recuperação" ou "Reprovado".
String defineClassification(double average) {
  if (average >= 7.0) {
    return 'Aprovado';
  } else if (average >= 5.0) {
    return 'Recuperação';
  } else {
    return 'Reprovado';
  }
}

/// Função para calcular a média das notas de um aluno.
/// Recebe uma lista de notas e retorna a média.
double calculateAverage(List<double> grades) {
  return grades.reduce((a, b) => a + b) / grades.length;
}

/// Função principal do programa.
/// Permite inserir os dados dos alunos, calcular médias e exibir o relatório final.
void main() {
  // Lista para armazenar os dados de todos os alunos
  List<Map<String, dynamic>> students = [];

  print('Bem-vindo ao Gerenciador de Notas!');

  // Loop para entrada de dados de múltiplos alunos
  while (true) {
    stdout.write('Informe o nome do aluno: ');
    String name = stdin.readLineSync()!;

    // Lista para armazenar as notas do aluno
    List<double> grades = [];
    for (int i = 1; i <= 3; i++) {
      double grade;
      while (true) {
        stdout.write('Digite a nota $i de $name: ');
        try {
          grade = double.parse(stdin.readLineSync()!);
          if (grade < 0 || grade > 10) {
            print('A nota deve estar entre 0 e 10. Tente novamente.');
          } else {
            break;
          }
        } catch (e) {
          print('Entrada inválida. Digite um número válido.');
        }
      }
      grades.add(grade);
    }

    // Calcula a média e define a classificação
    double average = calculateAverage(grades);
    String classification = defineClassification(average);

    // Adiciona os dados do aluno à lista
    students.add({
      'name': name,
      'grades': grades,
      'average': average,
      'classification': classification
    });

    // Pergunta se deseja adicionar mais alunos
    stdout.write('Adicionar mais alunos? (s/n): ');
    String? response = stdin.readLineSync();
    if (response == null || response.toLowerCase() != 's') {
      break;
    }
  }

  // Exibe o relatório final
  print('\nRelatório Final:');
  print('----------------------------------------');
  for (var student in students) {
    print('Aluno: ${student['name']}');
    print('Notas: ${student['grades'].join(', ')}');
    print('Média: ${student['average'].toStringAsFixed(2)}');
    print('Classificação: ${student['classification']}');
    print('----------------------------------------');
  }
}
