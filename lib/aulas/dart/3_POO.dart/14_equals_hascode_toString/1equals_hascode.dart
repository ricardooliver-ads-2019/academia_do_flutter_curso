import 'pessoas_equals_hascode_toString.dart';

/// Igualdade por referencia de memoria --> "É a regra dos ponteiros onde as variaveis podem apontar para o mesmo local de memoria"  
/// ex: [var nome = Pessoa();]
///     [var nome2 = nome;   ]
///
/// equals "Devemos implementar o equals quando independente da referencia de memoria queremos ferificar se os objetos são igual e como ele são iguais"
/// toda vez que implementarmos os equals devemos também implementar o hashcode deles para serem iguais["Pois tem coleções que usão o hashcode, ou seja a sua referencia de memoria, para fazer a comparação de igualdade "]


void main(){
  var p2 = PessoaEquals(nome: 'Ricardo', email: 'r@gmail.com', telefone: '699999999' );
  var p = PessoaEquals( nome: 'Ricardo', email: 'r@gmail.com', telefone: '629999999' );
  print(p2.hashCode);
  print(p);

  //var p2 = p;

  
  if (p == p2) {
    print('É igual');
    
  }else{
    print("Não é igual");
  }
  print(p.hashCode);
}