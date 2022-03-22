import '../../1_fundamentos/7_operadores_ternarios.dart';

class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //Construtor Default
  Pessoa({required String nomeConstruct, int? idadeConstruct, String? sexoConstruct}){
    nome = nomeConstruct;
    idade = idadeConstruct;
    sexo = sexoConstruct;
  }
  // Contrutor nomeado tenho a posibilidade de criar um tipo de construtor para uma ocasião específica
  Pessoa.semIdade({  
    required this.nome,
    required this.sexo,
  });

  Pessoa.vazia();

  //Construtor do tipo factory "É utilizado quando temos uma regra de negocio para criação da nossa classe!!!"
  factory Pessoa.fabrica(String nomeConstr){
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
  
}
