void main() {
  //OPERADORES DE COMPARAÇÃO
  /*
   * Os operadores de comparação retornam verdadeiro ou falso dependendo do resultado da 
   * comparação realizada. Vale ressaltar que esse valor pode ser armazenado em uma variavel 
   * booleano(true/false) específica que pode ser declarada como bool.
   */

  // (>) maior que
  print(11 > 14);

  // (<) menor que
  print(34 < 12);

  // (>=) maior ou igual a
  print(8 >= 8);

  // (<=) menor ou igual a
  print(10 <= 5);

  // (!=) diferente de
  print(10 != 10);
  
  // (==) igual a
  print(15 == 7);
  
  
  //OPERADORES LÓGICOS
  /*
   * Os operadores lógicos assim como os operadores de comparação retornam um valor booleano(true/false) 
   * dependendo do resultado da comparação, entretando sua diferença é que eles podem ser utilizados para comparar
   * múltiplas expressões que resultam em um valor booleano.
   */
 
  
  // (&&) E/AND
  /*
   * Esse operador retornará true somente se ambas espressões forem verdadeiras, caso contrário
   * o valor retornado será falso.
   */ 
  bool m = 10 == 20;
  bool n = 15 > 15.5;
  print(m && n);
  
  
  // (||) OU/OR
  /*
   * O operador or retornará true se pelo menos uma das expressões for verdadeira.
   */ 
  bool a = false;
  bool b = false;
  bool c = true;
  print(a || b || c);
  
  
  // (!) NÃO/NOT
  /*
   * O operador not inverterá o resultado de qualquer booleano.
   */ 
  bool h = false;
  print(!h);
  print(!(12 >= 15));
}
