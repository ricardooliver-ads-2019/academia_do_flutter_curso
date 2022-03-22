

void main(){
  
  final numero = [1,2,1,3,4];
  print(numero);
  numero.add(20); // --> adiciona um elemento no fim da lintas
  print(numero);
  numero.insert(2,5); // --> adiciona um elemento no index indicado ex: o número 5 foi adicionado no index 2
  print(numero);
  numero.remove(1); // --> remove da listo o elemento elemento encontrado na lista que tenha o valor passado
  print(numero);
  var listaNum2 = [50,100];
  numero.addAll(listaNum2); // --> adiciona uma lista 
  print(numero);
  
  // []--> index    [0]       [1]      [2]       [3]       [4]
  final nomes = ['Ricardo', 'Diogo', 'Renata', 'Carlos', 'Maria'];
  print(nomes);
  print(nomes[3]); // imprimirar o emento "Carlos";
  nomes.add('Luana');
  print(nomes);
  nomes.insert(2,'João');
  print(nomes);

  List<String> listaNomes2 = ['Silva', 'Ribeiro'];
  print(nomes);
  nomes.insertAll(2,listaNomes2); // --> adiciona uma lista no index indicado
  print(nomes);

  final listaDeLista = [['Ricardo', 'Desenvolvedor Mobile'], ['Carlos', 'Analista de Sistema']];
  print(listaDeLista);
  print(listaDeLista[0][1]);

  print(nomes);
  nomes.removeWhere((nome) => nome == 'Carlos'); // remove o elemento da lista confomer o expecificado na condição
  print(nomes);

  nomes.removeWhere((nome){ // remove o elemento da lista confomer o expecificado na condição
    if (nome == 'João') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);

  print(nomes[0]); // imprime o primeiro elemento da lista
  print(nomes[nomes.length-1]); // imprime o ultimo elemento da lista;

  print(nomes.first); // imprime o primeiro elemento da lista
  print(nomes.last); // imprime o ultimo elemento da lista

  var primeiroNome = nomes.firstWhere((nome){
    print(nome);
    if (nome == 'Renata') {
      return true;  
    } else {
      return false;
    }
  });
  print(primeiroNome);

  final numerosGerados = List.generate(5, (index) => index + 5);
  print(numerosGerados);

  final stringGerados = List.generate(3, (index) => 'Gerando Strings ${index + 1}');
  print(stringGerados);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  // 1 ... 100
  // 0 + 1 = 1
  // 1 + 2 = 3...
  var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue + numero);
  print(soma);

  // Spread operator (...)

  var listaNumSpreadB = [4,5,6];
  var listaNumSpread = [1,2,3, ...listaNumSpreadB];
  print(listaNumSpread);

  // Collection if
  var promacaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promacaoAtiva) 'Desconte de 20%' // se essa condição for verdadeira o desconto vai ser adicionado na lista, se for falsa não será
  ];
  print(produtos);

  // Collection for
  var listaInt = [1,2,3];
  var listaStringFor = [
    '#1',
    for(var i in listaInt) '#$i'
  ];
  print(listaStringFor);

  print(listaStringFor);
  var string = listaStringFor.join('->'); // junta todos os elementos de uma lista em uma string com o separador escolido;
  print(string);


}