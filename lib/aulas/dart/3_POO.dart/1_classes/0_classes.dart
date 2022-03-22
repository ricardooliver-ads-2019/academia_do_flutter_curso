

import '1_classes.dart';

void main(){
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Azul';
  camisetaNike.marca = 'Nike';

  print('''
    Camiseta:
      Tamanho: ${camisetaNike.tamanho}
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
      tipoLavagem: ${camisetaNike.tipoDeLavagem()};
  ''');

  print('------------------------');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.cor = 'Preta';
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.marca = 'Adidas';
  print('''
    Camiseta:
      Tamanho: ${camisetaAdidas.tamanho}
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
      tipoLavagem: ${camisetaAdidas.tipoDeLavagem()};
  ''');
}