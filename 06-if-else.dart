import 'dart:math';

void main() {
  /*
   * A estrutura condicional "if-else" é utilizada para controlar o fluxo do programa com base em uma expressão booleana. 
   * Dependendo do resultado dessa expressão, o programa seguirá caminhos diferentes para atender às necessidades específicas.
   * 
   * if(condicao for verdadeira){
   *    instrução ABC
   * }else{
   *    instrução XYZ
   * }
   */ 

  int maxFaltasAnuais = 50;
  double notaMinimaAnual = 60.0;
    
  //Exemplo 1
  //int quantFaltasAluno = 18;
  //double notaFinalAluno = 75.7;
  
  //Exemplo 2
  //int quantFaltasAluno = 64;
  //double notaFinalAluno = 87.0;
  
  //Exemplo 3
  int quantFaltasAluno = 5;
  double notaFinalAluno = 42.6;
  
  
  if(quantFaltasAluno > maxFaltasAnuais){
    print("Situação do Aluno: Reprovado");
  }
  else if(notaFinalAluno < notaMinimaAnual){
    print("Situação do Aluno: Em recuperação...");
    
    int notaRecuperacao = Random().nextInt(11); //numeros aleátorios >= 0 e < 11
    
    print("Nota obtida na recuperação: $notaRecuperacao");
    
    if(notaRecuperacao >= 7){
      print("Situação do Aluno: Aprovado");
    }else{
      print("Situação do Aluno: Reprovado");
    }
  }
  else{
    print("Situação do Aluno: Aprovado");
  }
}
