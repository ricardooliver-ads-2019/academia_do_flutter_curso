import 'dart:async';

// SkipWhile --> é um metodo que recebe uma condição para pular dados que estao entrando na stream, ou seja caso a condição seja verdadeira aquele dado será descartado ex:  stream = stream.take(5).skipWhilw(2); estou dizendo para iguininorar as duas primeiras entradas na minha stream
// SkipWhile --> //! No SkipWhile --> a condição precissa ser falsa para entrar
Future<void> main() async {
  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skipWhile((numero){
    print('numero que chegou na strea$numero');
    return numero < 5;
  });

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