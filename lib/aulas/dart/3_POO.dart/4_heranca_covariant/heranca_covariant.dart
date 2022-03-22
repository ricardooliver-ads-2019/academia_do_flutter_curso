// covariant --> É o metedo para consequir que uma class expecifica consica aceite um tipo de class e todos os seus filhos ou seja as classes que a extends

import 'banana.dart';
import 'fruta.dart';
import 'humano.dart';
import 'macaco.dart';

void main(){

  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('nanica'));
}