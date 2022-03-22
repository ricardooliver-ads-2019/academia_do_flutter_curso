//-- com o Const podemos criar contrutores do tipo const
//--> Em um contrutor do tipo Const não pode ter atributos que possam ter seus valores alterados 
// ou seja todos os atributos dessa classe terá que ser do tipo final
import 'pessoa_const_construtor.dart';

void main(){
  var p1 = PessoaConstConstrutor(nome: 'Carlos', idade: 15);
  var p2 = PessoaConstConstrutor(nome: 'Carlos', idade: 15);
  print(p1.hashCode);
  print(p2.hashCode);
  print(p1 == p2); // --> vai retornar falso poque as hashcode são diferentes, as instancias de memorias não são as mesmas

  print('--------------------------------------------------------------------------------------------------------------');

  var p3 = const PessoaConstConstrutor(nome: 'Carlos', idade: 15);
  var p4 = const PessoaConstConstrutor(nome: 'Carlos', idade: 15);
  print(p3 == p4); // --> vai retornar true poque as hashcode agora passam a ser os mesmos, pois o dart foi inteligenet o suficente para fazer essa comparação e ver que os seus elementos são identicos, então o proprio dart, faz a referencia de instancias iguais,

}