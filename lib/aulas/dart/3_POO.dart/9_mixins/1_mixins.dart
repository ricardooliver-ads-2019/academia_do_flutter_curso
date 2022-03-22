// Mixins --> É uma classe como qualquer outra, porem é usada como um metodo para conseguir fazer herança multiplas no dart

// Uma classe para ser um mixin ela não pode extender outra classe

// pode se criar um mixin assim --> mixin Dancar on Artista{} "Expesificando uma condição para poder herdar essa classe"
// ou pode se criar um mixin como um abstract class --> abstract class Artista{} "Mas ela não pode extender outra classe"

// Importante se atentar para a sobre escrita de metodos, ou seja se usarmos mixins e ele tiver metodos com o mesmo nome, 
// dependendo a ordem pode ser que ele sobrescreva 

import 'joao.dart';

void main(){
  var joao = Joao();
  // João é um Artista
  // João é um Dançarino
  // João é um Cantor
  print('''
    ${joao.atuar()}
    ${joao.cantar()}
    ${joao..dancar()}
''');
}