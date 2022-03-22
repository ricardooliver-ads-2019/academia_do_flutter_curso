void main (){
  var numeros = List.generate(10, (index) => index);

  numeros.where((numero) => numero != 5). // (onde) percore a lista e se a condição for satisfeita 
    forEach((numero) => print(numero));

  final numerosAte5 = numeros.takeWhile((numero) => numero < 6);
  print(numeros[1]);
  print(numerosAte5.elementAt(2)); // para ter acesso a um elemento de um interable 
  print(numerosAte5);
  print(numerosAte5.toList());

  final numerosAte8 = numeros.takeWhile((numero) => numero < 9).where((numero) => numero == 4).toList();
  print(numerosAte8);

  var nomes = ['Rodrigo', 'Guilhermer', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) { // quando encontar o primeiro true manterá todos os elementos vido depois
    if (nome != 'Arthur'){
      return true;

    }else{
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numerosStrList = numeros.map((numero) { // posso manipular uma lista para transformar ela em outro tipo
    return 'Numero é $numero';
  }).toList();
  print(numerosStrList);

}