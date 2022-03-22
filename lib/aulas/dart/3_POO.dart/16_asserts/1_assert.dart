// Asserts --> são "Afirmações" = verificações que podemos fazer para rodar em tempo de desenvolvimento
// Asserts são mais usadas quando queremos validar uma regra de negócio 

import 'cliente_asserts.dart';

void main(){
  //var c1 = ClienteAsserts(nome: 'Ricardo', cpf: '1233545654' ,cnpj: null, razaoSocial: null);
  var c2 = ClienteAsserts(nome: 'Ricardo', cpf: '1233545654' ,cnpj: '1321564', razaoSocial: 'Teste');
}