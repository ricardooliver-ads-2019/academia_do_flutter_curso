void main(){
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {
    print(cor);
  }

  switch(cor){
    case Cores.azul:
      // TODO: Handle this case.
      break;
    case Cores.vermelho:
      // TODO: Handle this case.
      break;
    case Cores.laranja:
      // TODO: Handle this case.
      break;
    case Cores.verde:
      // TODO: Handle this case.
      break;
    case Cores.preto:
      // TODO: Handle this case.
      break;
  }

  // Transformando a string azul em um enum Cores.azul "Antes da versão 2.15 do Dart"
  var azul ='azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  //versão 2.15 Dart
  //var corAzul215 = Cores.values.byName(azul);
  // print(corAzul215) --> metodo para printar um valor de enum

  var coresMap = Cores.values.asMap();
  print(coresMap);

  //var coresNameMap = Cores.NameMap[azul]; --> novo metodo da verção 2.15
  //print(coresNameMap);

  // Cores.values.byName('branco');

  //var corBranco = coresNameMap['branco'];
  //print(corBranco);
  
}


enum Cores{
 azul, vermelho, laranja, verde, preto

}
