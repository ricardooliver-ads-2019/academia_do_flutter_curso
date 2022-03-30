// uma stream não pode ser instanciada diretamente, para criarmos um stream precissamos de um controlador (StreamController)

import 'dart:async';

// Stream Periodic --> execulta de tempos em tempos uma ação - possui um intervalo de duração e uma função de callback que será execultada a cada intervalo

// Take --> é o ponto  de corde de uma stream onde posso informar o momento para encerrar aquela stream
// ex: stream = stream.take(5); --> a stream aqui só será execultada por 5 vezes 

Future<void> main() async {
  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

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