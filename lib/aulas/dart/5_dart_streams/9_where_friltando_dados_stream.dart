import 'dart:async';

// com o metodo Where --> é parecido com o metodo skipWhile, ou seja, o where serve para filtar dados que estão entrando na stream
// stream = stream.take(5).where((numero) => numero %2 == 0); só vai permitir entrar numeros que sejam pares
// Whele --> //! No Whele --> a condição precissa ser verdadeira para entrar
Future<void> main() async {

  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //stream = stream.skipWhile((numero) => numero %2 != 0).take(5);
  stream = stream.where((numero) => numero %2 == 0).take(5);
  stream.listen((numero) { 
    print('Listen value: $numero');
  });

  print('Fim!');
}

int callback(int value){
  print('Callback valor de entrada $value');
  return (value +1) *2;
  
}