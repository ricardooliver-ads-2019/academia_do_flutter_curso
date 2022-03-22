// Interfaces --> Contratos que sua classes filhas são obrigados a seguir, ou seja Atributos e metodos que uma class que implent a outra terá que implementar
// Para ser um interface a class abstrata não pode ter metodos implementados
//! abstract class Carro{ --> class abstrata tem métodos implementados
//!  void velocidadeMaxima(){} metodo já implementado {...}
//! }

import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

Carro golCarro2 = Gol();

void main(){


  //Auto Promoção de tipo ex:
  String? nome;
  //nome.toLowerCase();
  if (nome != null) {
    nome.toLowerCase();
  }

  // variaveis de tipo superior e atributos de classe
  // não são auto promonidas para o tipo checado!!!
  if (golCarro2 is Gol){
    (golCarro2 as Gol).tipoDeRoda();
  }


  Carro golCarro = Gol();
  // Quando checamos se a variável 'de escopo' é(is) de um tipo
  // Caso ela seja o dart vai automaticamente converter 
  // essa instancia para a classe do tipo!
  if (golCarro is Gol) {
    golCarro.tipoDeRoda();
  }

  //(golCarro as Gol).tipoDeRoda(); poder feita a auta promoção dessa forma porem, se não for do mesmo tipo exibirá uma exeption
  //(golCarro as Gol).tipoDeRoda();

 

  var uno = Uno();
  var gol = Gol();
  //gol.

  printarDadosDoCarro(uno);
  print('------------------------------------');
  printarDadosDoCarro(gol);

  

}

void printarDadosDoCarro(Carro carro){
  print("""
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()} KM
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRoda() : 'Não disponivel' }
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRoda() : 'Não disponivel' }
  """);
}