import 'dart:async';

// TakeWhile --> é o ponto  de corde de uma stream onde posso informar uma condição para encerrar aquela stream
// ex: stream = stream.takeWhile((int numero){return numero < 10;}); --> em quanto o numero for menor que 10 a stream aqui será execultada 
// esse corte esta sendo feito na porta de saida da stream
Future<void> main() async {
  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.takeWhile((int numero){
    print('O número que chegou no takeWhile $numero');
    return numero < 10;
  });

  // await for --> é como um loop infinito porem ele só será execultado quando tiver um dado respondido 
  await for (var i in stream) {
    print('valor$i');
  }

  print('Fim!');

}

int callback(int value){
  print('valor de entrada $value');
  return (value +1) *2;
  
}