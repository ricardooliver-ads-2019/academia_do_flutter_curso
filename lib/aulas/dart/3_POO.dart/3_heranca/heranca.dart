// Na Herança podemos identifica pelo termo (é um): "Homem é um Animal" e "Mulher é um Animal"

import 'cachorro.dart';

void main(){
  var cachorro = Cachorro(idade: 1);
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana);
  print(cachorro.recuperarIdade());
  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');
}