class ClienteOrdenacao implements Comparable<ClienteOrdenacao>{
  String nome;
  String telefone;
  
  
  ClienteOrdenacao({
    required this.nome,
    required this.telefone,
  });


  

  @override
  String toString() => 'ClienteOrdenacao(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(ClienteOrdenacao other) { // --> implementando o metodo de ordenaçao da minha classe
  print('chamando compareTo de $this');
    return nome.compareTo(other.nome);
  }
}
