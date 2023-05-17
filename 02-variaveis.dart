/*
 * Variável é um espaço reservado na memória que é utilizado para armazenar
 * um determinado dado durante a execução de um programa. 
 * 
 * Para fazer a declaração de uma variável precisamos informar o tipo do dado que desejamos
 * armazenar seguido pelo seu nome e posteriormente pelo valor que desejamos atribuir a ela. Vale
 * ressaltar que esse valor pode ser alterado posteriormente. 
 */

void main(){
  int idade = 30;
  String nome = 'Dart';
  double altura = 1.70;
  
  print(idade);
  print(nome);
  print(altura);
  
  
  idade = 35;
  print('Nova idade: $idade');
}