void main() {
  /*
   * While é uma estrutura de repetição que nos permite executarmos instruções repetidas vezes sem a necessidade de reescrevê-las.
   * Essas instruções serão realizadas até que a condição se torne falsa, quando isso ocorrer o loop(laço) será encerrado, caso contrário
   * nosso programa permanecerá em eterno loop, provocando possíveis travamentos e falhas.
   * 
   * while(condição){
   *      -instruções
   *      -algo para mudar o estado da condição analisada
   * }
   */ 

  
  //FORMA INEFICIENTE
  print(0);
  print(1);
  print(2);
  print(3);
  print(4);
  print(5);
  print(6);
  print(7);
  print(8);
  print(9);
  print(10);
  print("\n");
  
  
  
  //FORMA EFICIENTE
  int i = 0; //valor inicial
  
  while(i<=10) //enquanto a condição for verdadeira o loop continuará sendo realizado
  {
    print(i); //comando
    i++; //linha que altera o valor da condição analisada
  }
  print("\n");
  
  
  
  //Vale ressaltar que também podemos fazer verificações de expressões mais complexas:
  int x = 10;
  int y = 20;
  while( x > 0 && y <= 100){
    print("x = $x");
    print("y = $y");
    x--;
    y+=20;
  }
  /* 
   * Veja que o y atinge o 100 antes mesmo do x chegar a 0, assim por mais que o X ainda
   * seja maior que 0 o loop não continuará, pois o Y passa a assumir valores maiores que 
   * 100 e como estamos utilizando o operador &&, ambas as condições devem ser verdadeiras 
   * para que tenhamos um retorno verdadeiro.
   */
}
