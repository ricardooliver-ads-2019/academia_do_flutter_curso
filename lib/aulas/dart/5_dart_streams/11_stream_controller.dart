import 'dart:async';

import 'package:academia_do_flutter_curso/aulas/dart/3_POO.dart/12_operator_methods/numero.dart';

Future<void> main() async{

  print('Iniciando Stream Controller');
  final streamController = StreamController<int>.broadcast(); //--> aqui ja informei que essa stramController pode ter mais de um ouvinte
  final inStream = streamController.sink; // Porta de entrada da stream
  final outStream = streamController.stream; // Porta de saida da stream

  outStream
  .skip(1) //--> descatando o primeiro evento da stream
  .where((numero) => numero %2 == 0) //--> filtando numeros da stream
  .map((numero) => "O valor par enviado é$numero")
  .listen((strConvertida) { //--> adicionando um ouvinte da stream
    print('String Recebida');
    print(strConvertida);
  });

  var numeros = List.generate(20, ((index) => index));

  for (var numero in numeros){
    print('Enviando número $numero');
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('Fim Stream Controller');
  await streamController.close();
   
} 