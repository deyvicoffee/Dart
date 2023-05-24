void main() {
  /*
   * Diferentemente do While, ao invés de primeiro realizar a verificação para que só depois, caso a condição tenha sido verdadeira
   * executar os comandos o Do While permite executarmos os comandos antes de ser feita a verificação.
   *
   * do {
   *      -instruções
   *      -algo para mudar o estado da condição analisada
   * }while(condição);
   * 
   * While: Enquanto a condição for verdadeira faça isso.
   * Do While: Faça isso enquanto a condição for verdadeira.
   */ 

  
  //WHILE
  int i = 15;
  
  while(i >= 10){
    print(i);
    i--;
  }
  
  
  //DO WHILE
  do {
    print(i);
    i--;
  }while(i>=10);
  
  print("Valor final = $i");

  /*
   * Perceba que quando o i é 9 a condição do while se torna falsa pois, 9 não é maior ou igual a 10 então o loop é 
   * encerrado. Em seguida o 9 é impresso pelo do while mesmo indo contra sua condição. Como visto acima, isso ocorre 
   * devido o do while primeiro executar os comandos para só depois fazer a verificação, assim, após imprimir e decrementar 
   * o conteúdo da variável i o do while verifica a condição e vendo que é falsa faz o encerramento do laço.
   */
}