Future<void> main()async {
  var nomes = ['Carlos', "Renata", 'Topo', 'Ricardo'];

  print('inicio do programa');

  await Future.forEach<String>(nomes, (nome) async{
     print(await saudacao(nome));
  });

  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  var nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuture);
  print(saudacoes);

  print('Fim...!');
}

Future<String> saudacao(String nome){
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}