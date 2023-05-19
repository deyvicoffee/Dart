void main() {
  /*
   * Assim como o if/else, o switch/case é uma estrutura condicional. Geralmente, ele é usado para comparar um valor 
   * com diferentes casos esperados e executar instruções específicas quando houver correspondência. Além disso, 
   * o switch/case apresenta uma sintaxe mais organizada e legível, permitindo que as instruções para cada caso 
   * sejam dispostas de maneira clara, facilitando o entendimento e a visualização do código.
   * 
   * Após cada instrução utilizamos o comando break para interromper o fluxo da estrutura antes que ela seja concluída.  
   * Isso ocorre porque, uma vez que a instrução correspondente ao caso tenha sido executada, não faz sentido continuar com as verificações restantes. 
   * 
   * Outro detalhe sobre o switch/case é que podemos definir uma instrução padrão para ser executada se todas as verificações 
   * feitas não corresponderem ao valor informado. 
   * 
   * switch(valor_a_ser_analisado){
   *        case 'x':
   *        print('x');
   *        break;
   * 
   *        case 'y':
   *        print('x');
   *        break;
   * 
   *        default:
   *        print('Não encontrado.');
   * }
   */ 

  
  String codHexadecimal = "#0000FF";
  
  switch(codHexadecimal){
    case "#FFFF00":
      print("Amarelo");
      break;
      
    case "#008000":
      print("Verde");
      break;
      
    case "#0000FF":
      print("Azul");
      break;
      
    case "#FF0000":
      print("Vermelho");
      break;
      
    case "#000000":
      print("Preto");
      break;
         
    case "#FFFFFF":
      print("Branco");
      break;
      
    default:
      print("Cor não reconhecida");
  }
}