import 'dart:async';

// Skip --> é um metodo para pular um dado que esta entrando na stream ex:  stream = stream.take(5).skip(2); estou dizendo para iguininorar as duas primeiras entradas na minha stream

Future<void> main() async {
  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skip(2);

  // await for --> é como um loop infinito porem ele só será execultado quando tiver um dado respondido 
  await for (var i in stream) {
    print('valor que a stream trarou$i');
  }

  print('Fim!');

}

int callback(int value){
  print('Callback valor de entrada $value');
  return (value +1) *2;
  
}