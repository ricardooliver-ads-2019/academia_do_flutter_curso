// await --> aquarde esse processo ser concluido
Future<void> main()async{
  print('inicio do programa');
  var mensagem = await processo1();

  print('Mensagem é $mensagem');

  try {
    await processo3();
  } catch (erro) {
    print(erro);
  }

  print('Fim do programa');

}



Future<String> processo1(){
  print('inicio do Proc 1');
  return Future.delayed(Duration(seconds: 1), ()=>'fim do Proc 1');
  
}

Future<String> processo2(){
  print('inicio do Proc 2');
  return Future.delayed(Duration(seconds: 1), ()=>'fim do Proc 2');
  
}

Future<String> processo3(){
  print('inicio do Proc 3');
  return Future.delayed(Duration(seconds: 1), ()=> throw Exception());
  
}