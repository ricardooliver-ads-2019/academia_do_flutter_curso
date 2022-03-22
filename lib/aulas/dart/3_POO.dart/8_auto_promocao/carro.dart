//!Isso aqui é uma Interface
//!Pois não possui metodos implementados!!!
abstract class Carro{
  // --> o tipo abstract é para informar que esse atributo será inicializado por quem o implementar
  abstract int portas; 
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima(); // --> metodo não implementado ();
}




//!Isso aqui é uma class abstract
//!Pois tem metodos implementados!!!
abstract class CarroClasseAbstrata{
  void velocidadeMaxima(){} // --> metodo já implementado {...}
}