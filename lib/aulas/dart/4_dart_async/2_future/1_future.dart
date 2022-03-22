
// .whenComplete(() => print('Finalizou com Erro'));  --> sempre será execultado idependente se der erro ou não é a mesma coisa que o filnely do tray cat
// Um metodo Future possui 2 status (Incompleto / Concluido(com valor ou com erro))
// Concluido com valor --> then
// Concluido com erro --> CatErro ou OnError
// WhenComplete sempre será execultado!!!!
void main(){

  print('Iniciando o Programa');
  processo2();
  processo3().then((mensagem) => print(mensagem)).whenComplete(() => print('Finalizou com Sucesso'));;
  processo4()
    .then((mensagem) => print('Mensagem do Proc 4 $mensagem'))
    .catchError((erro)=> print('Erro ao execultar porc 4'))
    .whenComplete(() => print('Finalizou com Erro')); // 
  
  processo4()
    .then((mensagem) => print('Mensagem do Proc 4 $mensagem'), 
    onError:(erro)=> print('Tratando Erro pelo OnErro do then'))
    .whenComplete(() => print('Finalizou com Erro'));
  
  //processo5().then((mesagem){
  //    throw Exception();
  //  }, onError: (erro){
  //    print('Erro de dentro do then');
  //  });

}

Future<void> processo2() async{
  print('inicio do Proc 2');
  await Future.delayed(Duration(seconds: 3), (){
    var i =0;
    while(i<5){
      print(i);
      i++;
    }
    print('fim do Proc 2');
  });
}

Future<String> processo3(){
  print('inicio do Proc 3');
  return Future.delayed(Duration(seconds: 1), ()=>'fim do Proc 3');
  
}

Future<String> processo4(){
  print('inicio do Proc 4');
  return Future.delayed(Duration(seconds: 2), ()=> throw Exception());
  
}

Future<String> processo5(){
  print('inicio do Proc 5');
  return Future.delayed(Duration(seconds: 1), ()=>'fim do Proc 5');
  
}