void main() {
  /*
   * O operador ternário nos permite realizarmos verificações rápidas com poucas linhas de código.
   * Como o próprio nome diz, sua estrutura é composta de 3 partes, uma expressão e 2 retornos, um para 
   * caso a expressão for verdadeira e outro para quando ela for falsa.
   * 
   * Estrutura:
   * condição ? expressão_em_caso_verdadeiro : expressão_em_caso_falso
   * 
   * Podemos ler da seguinte forma:
   * A condição é verdadeira (?) Se sim executa o primeiro trecho (:) se não executa o segundo trecho.
   */ 

  int idade = 15;
  String maiorDeIdade = idade >= 18 ? "Maior de idade." : "Menor de idade.";
  print(maiorDeIdade);
  
  
  String elemento1 = "H";
  String elemento2 = "O";
  String molecula = ((elemento1 == "H" && elemento2 == "O") || (elemento1 == "O" && elemento2 == "H")) ? "Juntos os átomos compõem a molécula de água."
                                                                                                       : "Juntos os átomos não compõem a molécula de água.";
  print(molecula);
}
