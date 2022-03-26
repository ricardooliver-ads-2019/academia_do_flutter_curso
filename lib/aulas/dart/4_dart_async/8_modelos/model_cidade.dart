
import 'dart:convert';

class ModelCidade {
  final String cep;
  final String logradouro;
  final String bairro;
  final String complemento;
  final String ddd;
  final String localidade;
  final String uf;

  ModelCidade({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.complemento,
    required this.ddd,
    required this.localidade,
    required this.uf,
  });

  factory ModelCidade.fromMap(Map<String, dynamic> map){
    return ModelCidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      complemento: map['complemento'] ?? '', 
      ddd: map['ddd'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
    );
  }

  //factory ModelCidade.fromJson(String source){
  //  var jsonMap = jsonDecode(source);
  //  return ModelCidade.fromJson(jsonMap);
  //}

  factory ModelCidade.fromJson(String source) => ModelCidade.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap(){
    return {
      'cep': cep,
      'logradouro': logradouro,
      'bairro': bairro,
      'complemento': complemento, 
      'ddd': ddd,
      'localidade': localidade,
      'uf': uf,
    };
  }

  String toJson() => jsonEncode(toMap());
}
