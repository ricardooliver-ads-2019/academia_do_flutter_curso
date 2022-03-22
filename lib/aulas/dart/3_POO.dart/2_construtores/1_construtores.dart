import 'pessoa.dart';

void main(){
  var pessoa = Pessoa( nomeConstruct: 'Ricardo', idadeConstruct: 18, sexoConstruct: 'M');
  print(pessoa.nome);

  var pessoaSemIdade = Pessoa.semIdade(nome: 'Carlos', sexo: 'M');
  print(pessoaSemIdade.nome);
}