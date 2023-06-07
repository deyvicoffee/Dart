/*
 * As funções nos permitem utilizarmos um mesmo trecho de código em diferentes locais
 * de um programa sem a necessidade de repeti-lo. Isso torna os códigos mais legíveis
 * e de fácil manutenção uma vez que para corrigir um problema basta fazermos a alteração
 * dentro da função e todos os locais que a utilizam já serão corrigidos automaticamente.
 * 
 * Para criarmos uma função precisamos informar:
 * Tipo de retorno;
 * Nome da função;
 * E se ela recebe parâmetros ou não.
 */


//>RETORNO
/* 
 * Funções podem ou não retornar valores para o local onde foram chamadas.
 * Caso não quisermos retornar valores usamos a declaração void.
 * Exemplo de função sem retorno:
 * void nome_funcao(){
 *   comandos;
 * }
 * 
 * Já quando quisermos precisamos informar durante sua declaração o tipo do dado 
 * que será retornado e em seu escopo explicitá-lo.
 * Exemplo de função com retorno:
 * String nome_funcao(){
 *   comandos;
 *   return 'Dart';
 * }
 */


//>PARÂMETROS
/*
 * Uma função também pode ou não receber valores, esses valores são chamados de parâmetros.
 * Geralmente, uma função que recebe parâmetros realiza as intruções com base nas informações recebidas.
 * Para declararmos uma função que recebe parâmetros precisamos, entre os parênteses, inserir 
 * o tipo do valor que será recebido e nomeá-lo. Caso forem vários parâmetros, separamos eles por
 * vírgula.
 * 
 * void soma(tipo_do_valor nome_parametro1, tipo_do_valor nome_parametro2){
 *     print(nome_parametro1 + nome_parametro2);
 * }
 */

//>>POSIÇÃO DOS PARÂMETROS
/* 
 * Por fim vale ressaltar que os parâmetros devem ser passados na ordem correta, ou seja,
 * se uma função foi declarada da seguinte forma 
 * void imc(int pesoEmGramas, double altura){}
 * devemos respeitar a ordem passando primeiro um valor inteiro e em seguida um valor racional 
 * imc(74000, 1.80);
 */


//>>>PARÂMETROS POSICIONAIS OPCIONAIS 
/*
 * Se quisermos tornar a passagem de um ou vários parâmetros opcional, basta adiciornarmos eles
 * dentro de colchetes e informar o valor padrão que eles assumirão caso não tiverem sido informados, da seguinte forma:
 * 
 * tipo_retorno nome_funcao(tipo_param nome_param_obrigatorio, [tipo_param param_opc1 = 0, tipo_param param_opc2 = false]){...}
 * 
 * Entretanto vale ressaltar que por mais que sua passagem seja opcional, devemos respeitar a posição em que eles sem encontram, ou seja
 * para informarmos por exemplo o param_opc2 do exemplo acima, antes devemos informar param_opc1.
 */

//>>>PARÂMETROS NOMEADOS
/*
 * Diferentemente dos posicionais, os parâmetros nomeados nos permitem selecionar parâmetros específicos que desejamos passar para a 
 * função através de seu nome. Logo como especificamos qual parâmetro estamos informando não precisamos mais defini-los em sequência. 
 * Para criarmos uma função com parâmetros nomeados precisamos adicioná-los entre chaves. 
 * 
 * Caso desejarmos que um parâmetro nomeado seja obrigatório devemos adicionar o required antes de sua declaração. Ao fazermos isso não
 * precisamos mais informar na declaração da função o valor padrão que ele assumirá, pois como ele é obrigatório, ele sempre será passado para ela.
 * 
 * tipo_retorno nome_funcao(tipo_param nome_param_obrigatorio, {tipo_param param_opc1 = 0, tipo_param param_opc2 = false}){...}
 * 
 * Para acessá-los podemos fazer do seguinte modo:
 * nome_funcao(param_obrigatorio_x, param_opc2: 'Dart');
 */


void main() { 
  //Para usarmos as funções precisamos chamá-las da seguinte forma:
  saudacao();
  
  saudacaoPorPeriodo("noite");
  
  print("A data e hora atual é ${dataHotaAtual()}");
  
  int s1 = soma(78, 156);
  int s2 = soma(14);
  print(s1);
  print(s2);
  print("\n");
  
  
  //ORDEM DOS PARÂMETROS
  cadastrarUsuario("João", 45);
  //cadastrarUsuario(45, "João"); //Declaração não funciona uma vez que estamos tentando atribuir um valor inteiro a uma String.

  
  //PARÂMETROS POSICIONAIS OPCIONAIS
  //                 nome, idade, peso, sedentario
  cadastrarUsuario2("João", 45);                            //ok
  cadastrarUsuario2("João", 45,   70.9);                    //ok
  cadastrarUsuario2("João", 45,   70.9,   false);           //ok
//cadastrarUsuario2("João", 45,           false);           //NÃO ok => como é posicional temos que respeitar a posição dos elementos
  
  //PARÂMETROS NOMEADOS
  cadastrarUsuario3("Marcos", 26,       sedentario: false); //Agora é possível informar o parâmetro sedentário sem ter que informar o peso
  cadastrarUsuario4(peso: 85.7, "Marcos", 26); //Neste caso, o parâmetro peso se torna obrigatório. Como ele é nomeado pode ser adicionado em qualquer região. Já o bairro assume o valor nulo.
  cadastrarUsuario4(peso: 85.7, "Marcos", 26, bairro: null);
  cadastrarUsuario4(peso: 85.7, "Marcos", 26, bairro: "Smurfs");
}


//Função sem retorno e sem parâmetros
void saudacao(){
  print("Hello World!");
}

//Função sem retorno e com parâmetros
void saudacaoPorPeriodo(String periodo){
  switch(periodo){
    case 'madrugada':
      print("Boa madrugada!");
      break;
      
    case 'manha':
      print("Bom dia!");
      break;
      
    case 'tarde':
      print("Boa tarde!");
      break;
      
    case 'noite':
      print("Boa noite!");
      break;
      
    default:
      print('Período inválido.');
  }
}
  
//Função com retorno e sem parâmetros
String dataHotaAtual(){
  DateTime agora = DateTime.now();
  return agora.toString();
}


//Função com retorno e com parâmetros
int soma(int numero1, [int numero2 = 0]){
  return numero1 + numero2;
}


void cadastrarUsuario(String nome, int idade){
  print("INFORMAÇÕES");
  print("-" * 15);
  print("NOME: $nome");
  print("IDADE: $idade");
  print("\n");
}

void cadastrarUsuario2(String nome, int idade, [double peso = 0.0, bool sedentario = false]){
  print("INFORMAÇÕES");
  print("-" * 20);
  print("NOME: $nome");
  print("IDADE: $idade");
  print("PESO: $peso");
  print("SEDENTÁRIO: ${sedentario ? "SIM" : "NÃO"}");
  print("\n");
}

void cadastrarUsuario3(String nome, int idade, {double peso = 0.0, bool sedentario = false}){
  print("INFORMAÇÕES");
  print("-" * 20);
  print("NOME: $nome");
  print("IDADE: $idade");
  print("PESO: $peso");
  print("SEDENTÁRIO: ${sedentario ? "SIM" : "NÃO"}");
  print("\n");
}


void cadastrarUsuario4(String nome, int idade, {required double peso, bool sedentario = false, String? bairro}){
  print("INFORMAÇÕES");
  print("-" * 20);
  print("NOME: $nome");
  print("IDADE: $idade");
  print("PESO: $peso");
  print("SEDENTÁRIO: ${sedentario ? "SIM" : "NÃO"}");
  print("\n");
}