class Pessoa{
  String? nome;

  Telefone? telefone = Telefone(); // --> Associação por agregação pois pessoa "tem um telefona, mas pode existir sem"
  Endereco endereco = Endereco(); // --> Associação por Composição pois pessoa "tem um telefona, mas NÃO pode existir sem"

}


class Endereco{

}

class Telefone{

}