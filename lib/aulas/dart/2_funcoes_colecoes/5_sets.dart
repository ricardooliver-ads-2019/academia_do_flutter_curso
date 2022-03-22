// Uma das caracteristicas do Set(); é que não aceita colocar elementos repetidos
// Aceita quase todos os metodos de uma lista ex. add(); .forEach();
// para pegar um elemento de dentro de um set usase o metodo .elementAt(index) e seu index

void main(){
  List<int?> numLista =  [1,2,3,2,5,1];
  numLista.add(null);
  print(numLista);
  print('-----------------------------------');
  //var numerosSet = Set();
  var numerosSet = <int?>{};
  numerosSet.add(2);
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(5);
  numerosSet.add(3);
  numerosSet.add(5);
  print(numerosSet);
  numerosSet.forEach(print);
  print('-----------------------------------');

  var numerosSet2 = {1,2,3,4,5,6,7,9,8};
  print(numerosSet2.difference(numerosSet));// --> metodo que retorna a diferença entre dois sets, que tem em um que nao tem no outro
  print('-----------------------------------');
  print(numerosSet.difference(numerosSet2));// --> metodo que retorna a diferença entre dois sets, que tem em um que nao tem no outro
  print('-----------------------------------');
  print(numerosSet.union(numerosSet2)); // --> retorna a junção dos dois sets sem reperir elementos
  print('-----------------------------------');
  print(numerosSet.intersection(numerosSet2)); // --> retorna os elementos que se repetem nos dois conjuntos
  var nomes = {'Rodrido', 'Diogo', 'Marta'};
  var nomes2 = {'Ricardo', 'Marta', 'João'};
  print(nomes.intersection(nomes2)); // --> retorna os elementos que se repetem nos dois conjuntos
  print('-----------------------------------');
  print(nomes2.lookup('Ricardo')); // --> faz uma busca por um elementos, se esse elemento estiver na lista vai retornar o proprio elemento, se nao tiver retorna null,
  print(nomes2.lookup('Yuri')); // --> faz uma busca por um elementos, se esse elemento estiver na lista vai retornar o proprio elemento, se nao tiver retorna null,
  print('-----------------------------------');
  print(nomes.elementAt(1));

  
}