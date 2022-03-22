import 'cliente_ordenacao.dart';
// quando queremos ordenar uma class com uma ordenação default, é preciso implementar o compareble na minha class
// ex: class ClienteOrdenacao implements Comparable<ClienteOrdenacao>{ 
void main(){

  var c1 = ClienteOrdenacao(nome: 'Ricardo', telefone: '6999991111');
  var c2 = ClienteOrdenacao(nome: 'Carlos', telefone: '6999992222');
  var c3 = ClienteOrdenacao(nome: 'Henrique', telefone: '6999993333');
  var c4 = ClienteOrdenacao(nome: 'Jessica', telefone: '6999994444');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  //lista.sort((c1, c2) => c1.nome.compareTo(c2.nome)); //--> Faz a ordenação dos elementos da lista pelo seu nome;
  print(lista);
}