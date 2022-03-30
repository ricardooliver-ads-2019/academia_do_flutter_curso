import 'dart:async';

Future<void> main() async{

  print('Iniciando Stream Controller');
  final streamController = StreamController<Pessoa>.broadcast(); //--> aqui ja informei que essa stramController pode ter mais de um ouvinte
  final inStream = streamController.sink; // Porta de entrada da stream
  final outStream = streamController.stream; // Porta de saida da stream

  outStream
  .listen((pessoa) { //--> adicionando um ouvinte da stream
    print('Seja bem veindo ${pessoa.nome}');
  });

  var numeros = List.generate(20, ((index) => index));

  for (var numero in numeros){
    print('Enviando número $numero');
    inStream.add(Pessoa(nome: 'Ricardo Oliver $numero'));
    //await Future.delayed(Duration(milliseconds: 500));
  }

  print('Fim Stream Controller');
  await streamController.close();
   
} 

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
  
}
