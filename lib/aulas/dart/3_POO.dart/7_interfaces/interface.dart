// Interfaces --> Contratos que sua classes filhas são obrigados a seguir, ou seja Atributos e metodos que uma class que implent a outra terá que implementar
// Para ser um interface a class abstrata não pode ter metodos implementados
//! abstract class Carro{ --> class abstrata tem métodos implementados
//!  void velocidadeMaxima(){} metodo já implementado {...}
//! }

import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main(){

  var uno = Uno();
  var gol = Gol();
  //gol.

  printarDadosDoCarro(uno);
  print('------------------------------------');
  printarDadosDoCarro(gol);

  Carro golCarro = Gol();
  //golCarro.

}

void printarDadosDoCarro(Carro carro){
  print("""
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()} KM
  """);
}