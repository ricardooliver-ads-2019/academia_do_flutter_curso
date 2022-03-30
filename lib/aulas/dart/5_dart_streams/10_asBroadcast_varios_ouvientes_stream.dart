
import 'dart:async';

// com o metodo Listener --> é possivel ficar escutando uma stream
// Por padrão só é possivel ter um (listener) ouvinte em uma stream
// mas caso seja necessario ter mais de um ouvinte, seja que mais elementos 
//sejam notificados pela aquela stream é possivel pelo metodo
// asBroadcast --> metodo para adcionarmos varios ouvintes ma mesma stream

Future<void> main() async {

  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream().take(5);


  stream.listen((numero) { 
    print('Listen value: $numero');
  });

  stream.listen((numero) { 
    print('Listen2 value: $numero');
  });

  print('Fim');
}

int callback(int value){
  print('Callback valor de entrada $value');
  return (value +1) *2;
  
}