//>VARIÁVEIS NÃO NULAS
/*
 * As variáveis não nulas ou non-nullable devem obrigatoriamente possuir um valor dentro de si
 * antes de serem usadas, diferentemente das variáveis nulas que mesmo nos casos onde não estão 
 * armazenando nenhuma informação podem ser usadas em operadores condicionais, por exemplo.
 * 
 * Para declararmos uma variável não nula basta realizarmos sua declaração da forma normal, pois 
 * por padrão elas já são non-nullables:
 * String descricao;
 */

//>>NULL SAFETY
/* 
 * Graças ao recurso de null safety da linguagem não podemos atribuir um valor nulo a uma variável
 * não nula. Isso nos garante que uma determinada variável sempre terá em si um valor armazenado 
 * e caso precisarmos dele precisarmos podemos acessá-lo sem nenhum problema ou risco de causar uma exceção ou 
 * travamento no programa devido à tentativa de acessar um objeto vazio como é o caso do NullPointerException 
 * do Java por exemplo.
 */

void main() {
  //EXEMPLOS DO NULL SAFETY EM AÇÃO

  /*
   * Declaração inválida (linha 31)
   * Como a variável é não anulável ela não pode assumir outro
   * valor que não seja, nesse caso, um número inteiro.
   */
  int numero;
  numero = 5;
  numero = null;

  /*
   * Declaração inválida (linha 40)
   * Antes de realizarmos qualquer ação com a variável somos obrigados
   * a inicializá-la, o que impede que ocorram exceções durante a execução
   * do programa.
   */
  int contador;
  print(contador);

  /*
   * Declaração inválida (linha 48)
   * Como a variável não pode ser nula a verificação que
   * ocorre na linha 48 não pode ser feita.
   */
  int codUsuario;
  if (codUsuario != null) {
    //faça alguma coisa
  }
}
