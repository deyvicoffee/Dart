void main() {
  printDescricao("Detergente");
  printDescricao("Amaciante", "Realinhar as fibras dos tecidos, deixando-o mais macio e perfumado.");
}

void printDescricao(String produto, [String? descricao]) {
  print("PRODUTO: ${produto.toUpperCase()}");

  /**
   * Como o parâmetro posicional opcional descrição assume o valor nulo caso
   * não seja informado, ao tentarmos acessar seu método toUpperCase o Dart gera
   * um erro pois em uma tentativa de conversão de um valor nulo poderia
   * provacar vários problemas no funcionamento do sistema.
   */
  //print("DESCRIÇÃO: ${descricao.toUpperCase()}"); //Linha gera um erro


  /**
   * Assim para garantirmos que estaremos trabalhando com um valor não nulo podemos
   * fazer sua conversão utilizando, por exemplo, estruturas condicionais.
   */
  if (descricao != null) {
    print("DESCRIÇÃO: ${descricao.toUpperCase()}\n"); //dentro desse escopo descricao se torna non-nullable
  }


  /**
   * Outra forma de realizarmos a conversão é por meio do operador null-aware.
   * Null-awere permite atribuirmos um valor para caso a variavél analisada for nula, 
   * entretanto se ela não for será utilizado o valor armazenado por ela.
   */
  String d = descricao ?? "SEM DESCRIÇÃO"; //garantimos que sempre teremos um valor para a descrição
  print("descrição: ${d.toLowerCase()}\n");
}
