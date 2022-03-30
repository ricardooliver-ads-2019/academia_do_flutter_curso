import 'dart:async';

// com o metodo Listener --> é possivel ficar escutando uma stream

Future<void> main() async {

  print('iniciando a stream');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);
  stream.listen((numero) { 
    print('Listen value: $numero');
  });


}

int callback(int value){
  print('Callback valor de entrada $value');
  return (value +1) *2;
  
}