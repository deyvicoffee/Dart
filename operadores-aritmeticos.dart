//Podemos realizar cálculos com os valores armazenados nas variáveis como vemos abaixo:

void main(){
  int x = 15;
  int y = 7;
  double z = 40.6;
  
  
  //SOMA
  print(x + y);
  
  //SUBTRAÇÃO
  print(x - y);
  
  //MULTIPLICAÇÃO
  print(x * z);
  
  //DIVISÃO
  print(z / 2);
  
  //RESTO DA DIVISÃO 
  print(x % y);
  
  //INCREMENTAR UMA UNIDADE
  print(x++);
  
  //DECREMENTAR UMA UNIDADE
  print(x--);
  
  //REATRIBUIR O VALOR DE UMA VARIÁVEL SOMANDO, SUBTRAINDO, DIVIDINDO OU MULTIPLICANDO UM 
  //DETERMINADO VALOR COM O CONTEÚDO QUE JÁ ESTÁ NELA.
  //Opção 1:
  x = x + 2;
  y = y - 12;
  z = z / 2;
  
  print(x);
  print(y);
  print(z);

  //Opção 2:
  x += 3;
  y -= 20;
  z *= 2;
  
  print(x);
  print(y);
  print(z);
  
  //EXPRESSÕES OBS:os termos entre parênteses possuem preferência na operação
  print((x + y) * (-z) - 3);
}