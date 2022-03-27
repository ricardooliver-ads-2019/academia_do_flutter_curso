
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
    // Transformando um map em uma class modelo
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
    // recebendo um json "String" e transformando em um map<String, dynamic>
    // E transformando um map em uma class modelo
  //  var jsonMap = jsonDecode(source);
  //  return ModelCidade.fromMap(jsonMap);
  //}

  // recebendo um json "String" e transformando em um map<String, dynamic> e depois E transformando um map em uma class modelo
  factory ModelCidade.fromJson(String source) => ModelCidade.fromMap(jsonDecode(source));


  Map<String, dynamic> toMap(){
    // Transformando minha class modelo em um map 
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

  // tranformando um map em um jason "string"  
  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return '''ModelCidade(
      cep: ${cep}, 
      logradouro: $logradouro, 
      bairro: $bairro, 
      complemento: $complemento, 
      ddd: $ddd, 
      localidade: $localidade, 
      uf: $uf)''';
  }
}
