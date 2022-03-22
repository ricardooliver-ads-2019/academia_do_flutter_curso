
// É a possibilidade de enviarmos construtores para dentro de funções
import '../../2_funcoes_colecoes/2_funcoes_arrow__anonimas_typedef.dart';
import '../2_construtores/pessoa.dart';

void main(){
  final nomes = ['Carlos', 'Charlhes', 'Ricardo', 'Diogo'];
  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  for (var pessoa in pessoasAntigo){
    print('Olá ${pessoa.nome}');
  }
  print('-----------------------------------------------');
  print('Contrutores Nomeados');
  final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  for (var pessoa in pessoas){
    print('Olá ${pessoa.nome}');
  }

  print('-----------------------------------------------');
  print('Contrutores Default');
  //final pessoasNew = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoasNew = nomes.map<Pessoa>(Pessoa.fromJson).toList();
  for (var pessoa in pessoas){
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);

  
}

//void funcaoQualquer(dynamic Function(String) funcao){
//void funcaoQualquer(Object Function(String) funcao){
//void funcaoQualquer(Pessoa Function(String) funcao){ Class --> Pessoa
void funcaoQualquer(void Function(String) funcao){
  funcao('Renata');
}


class Pessoa {
  String nome;
  
  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome){
    return Pessoa(nome);
  }

  
}
