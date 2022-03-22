import 'fruta.dart';

abstract class Mamifero{

  void comer(covariant Fruta fruta); 
  // covariant --> permite que a class que for implementar o metodo comer poderá usar como atributo qualquer class, desde que essa seja filha de fruta

}