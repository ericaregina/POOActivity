# Atividade de Gerenciador de Notas +  Conceitos de POO em Dart

Este programa em Dart ajuda a gerenciar as notas de alunos de uma turma. Ele permite inserir os nomes e as notas de vários alunos, calcular suas médias e classificá-los como Aprovado, Recuperação ou Reprovado. No final, exibe um relatório completo.

## Pré-requisitos
Antes de rodar o programa, certifique-se de que você tenha:

- Dart SDK instalado no seu sistema.
- Instruções de instalação.

## Como Executar
Siga os passos abaixo para rodar o programa no terminal:

1. Clone o repositório ou copie o arquivo do código-fonte:

- Salve o código em um arquivo chamado notas.dart.

2. Abra o terminal:

- No Windows, use o PowerShell ou o Prompt de Comando.
- No Linux/Mac, use o terminal padrão.

3. Navegue até o diretório do arquivo: Use o comando cd para acessar a pasta onde o arquivo está salvo. Por exemplo:

cd /caminho/para/o/arquivo

4. Execute o programa: Execute o seguinte comando para iniciar o programa:

dart notas.dart

5. Siga as instruções no terminal:

- Insira os nomes e as notas dos alunos conforme solicitado.
  
- O programa calculará automaticamente as médias e exibirá o relatório final.

# Exemplo de Uso

## Entrada:

```
Informe o nome do aluno: João
Digite a nota 1 de João: 8.5
Digite a nota 2 de João: 7.0
Digite a nota 3 de João: 6.5
Adicionar mais alunos? (s/n): s
Informe o nome do aluno: Ana
Digite a nota 1 de Ana: 9.0
Digite a nota 2 de Ana: 8.0
Digite a nota 3 de Ana: 7.5
Adicionar mais alunos? (s/n): n
```
## Saída:
```
Relatório Final:
----------------------------------------
Aluno: João
Notas: 8.5, 7.0, 6.5
Média: 7.33
Classificação: Aprovado
----------------------------------------
Aluno: Ana
Notas: 9.0, 8.0, 7.5
Média: 8.17
Classificação: Aprovado
----------------------------------------
```
## Estrutura do Código

 O programa utiliza:

- List e Map para armazenar os dados dos alunos.
- Funções para calcular a média e definir a classificação.
- Validações para garantir que as notas estejam entre 0 e 10.
