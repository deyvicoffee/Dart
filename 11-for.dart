void main() {
  /*
   * Assim como o While o For também é uma estrutura de repetição, a única diferença é que podemos
   * definir o valor inicial e o incremento/decremento dentro da própria estrutura.
   * 
   * Para o for precisamos passar algumas informações como:
   * Um valor inicial a partir do qual a contagem será iniciada;
   * Uma condição que caso for falsa fará com que a estrutura encerre o loop;
   * E um incremento/decremento que mudará o valor analisado na condição. 
   * Obs: O incremento/decremento é aplicado automaticamente ao fim da execução de todos os comandos do escopo. 
   * 
   * for(valor inicial; condição; incremento/decremento){
   *    comandos;
   * }
   */ 

  for(int i = 0; i <= 10; i++){
    for(int j = 0; j <= 10; j++){
      print("$i x $j = ${i * j}");
    }
    print("\n");
  }
}