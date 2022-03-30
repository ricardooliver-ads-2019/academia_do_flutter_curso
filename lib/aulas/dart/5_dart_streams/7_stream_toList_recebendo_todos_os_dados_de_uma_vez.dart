import 'dart:async';

// 

Future<void> main() async {

  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  // o metodo toList(); nos permite deixa a stream sincrona e assim capiturar todos os dados e ir os armazenados e quando a stream for cortada os dados serão apresentados de uma só vez
  final data = await stream.toList();
  print('Todos os Valores de saida da STREAM: $data');
  print('Fim!');

}

int callback(int value){
  print('Callback valor de entrada $value');
  return (value +1) *2;
  
}