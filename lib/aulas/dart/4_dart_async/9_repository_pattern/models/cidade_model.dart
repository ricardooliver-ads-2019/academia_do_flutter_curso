import 'dart:convert';

class CidadeModel {
  final String cep;
  final String logradouro;
  final String bairro;
  final String complemento;
  final String ddd;
  final String localidade;
  final String uf;

  CidadeModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.complemento,
    required this.ddd,
    required this.localidade,
    required this.uf,
  });
  

  Map<String, dynamic> toMap() {
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

  factory CidadeModel.fromMap(Map<String, dynamic> map) {
    return CidadeModel(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      complemento: map['complemento'] ?? '',
      ddd: map['ddd'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CidadeModel.fromJson(String source) => CidadeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CidadeModel(cep: $cep, logradouro: $logradouro, bairro: $bairro, complemento: $complemento, ddd: $ddd, localidade: $localidade, uf: $uf)';
  }
}
