// (..) --> é um metodo usado para execultar uma ação dentro de uma instancia 


void main(){
  var pessoa = Cliente()
  ..nome = 'Ricardo'
  ..email = 'teste@gmail.com'
  ..CPF = '013.212.152-23'
  ..printCliente();

  //pessoa.nome ='Ricardo';
  //pessoa.email = 'teste@gmail.com';
  //pessoa.CPF = '013.212.152-23';

  print("""
    Cliente:
      Tipo: ${pessoa.runtimeType}
      Nome: ${pessoa.nome}
      email: ${pessoa.email}
      CPF: ${pessoa.CPF}
  """);

  var mapa = <String, String>{}
  ..putIfAbsent('nome', () => 'Carlos')
  ..putIfAbsent('email', () => 'Carlos@gmail.com')
  ..putIfAbsent('cpf', () => '111.111.000.10');

}

class Cliente{
  String? nome;
  String? email;
  String? CPF;

  void printCliente(){
  print("""
    Cliente:
      Nome: ${nome}
      email: ${email}
      CPF: ${CPF}
  """);
}
}

