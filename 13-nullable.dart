//>VARIÁVEIS NULAS
/*
 * As variáveis nulas ou nullable podem ou não possuir um valor dentro de si.
 * 
 * Quando uma variável nula não possui um valor atribuído, seu valor padrão é definido como null.
 * 
 * Um valor nulo representa uma referência que aponta, geralmente intencionalmente, 
 * para um objeto ou endereço inexistente ou inválido https://developer.mozilla.org/en-US/docs/Glossary/Null
 * 
 * Para declararmos uma variável que pode ser nula basta adicionarmos um ponto de interrogação na frente
 * do seu tipo da seguinte forma:
 * String? descricao;
 */

//>>NULL SAFETY
/* 
 * No Dart assim como em outras algumas outras linguagens como o Kotlin possui um recurso chamado
 * null safety. Este recurso de segurança permite explicitarmos uma variável que pode ou não ser nula. 
 * Ao fazermos isso de certa forma dizermos ao nosso programa para ter cuidado durante sua utilização, 
 * pois dependendo do que há dentro dela algumas lógicas podem não funcionar. Sendo assim, quando o Dart 
 * identifica, por exemplo, que estamos tentando realizar operações ou passar como parâmetro para um função 
 * uma variável nula ele gera um erro na linha e informa o problema antes mesmo do programa ser executado,
 * permitindo assim realizarmos tratativas de forma antecipada para quando o valor for nulo.
 */

void main() {
  /*
   * Da mesma forma que a variável pode armazenar um valor inteiro
   * ela também pode ser nula, portanto as linhas abaixo não resultam 
   * em nenhum problema.
   */
  int? numero;
  numero = 5;
  numero = null;

  /*
   * Não há obrigatoriedade de inicializarmos uma variável nullable antes
   * de usá-la, pois quando ela não estiver armazenando um dado do tipo especificado
   * ela, por padrão retornará null.
   */
  int? contador;
  print(contador);

  /*
   Como a variável não pode ser nula a verificação que
   ocorre na linha 49 não pode ser feita.
   */
  int? codUsuario;
  if (codUsuario != null) {
    //faça alguma coisa
  }
}
