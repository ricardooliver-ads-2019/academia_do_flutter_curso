// Map é um conjunto de chave e valor "Igual ou tipo dicionario em python" Map<String, dynamic> paciente = {'nome' : 'Ricardo', 'idade' : 29...};
// O  map pode ser nulo mas se for criado deve conter a chave e o valor não nulos
import '../1_fundamentos/2_1_null_aware_operator.dart';

Map<String, dynamic>? paciente22 = null;
// O mapa e o valor não poden ser nulos, mas a chave pode ser nula
var paciente23 = <String?, dynamic>{
  null : 'Olá',
};
// O mapa e a chave não poden ser nulos mas o valor pode ser nulo
var paciente24 = <String, String?>{
  'nome' : null,
};
void main(){
 // Map<String, dynamic> paciente = {'nome' : 'Ricardo', 'idade' : 29};
  var paciente = <String, dynamic>{
    'nome' : 'Ricardo', 
    'idade' : 29
  };
                    // chave        valor 
  paciente.putIfAbsent('sexo', () => 'm'); // metodo para adicionar elementos no map SE a chava não existir
  print(paciente);
  print('-----------------------');
  paciente.update('idade', (value) => 25); // metodo para atualizar um elementos no map SE a chava existir se nao da ERROR
  print(paciente);
  print('-----------------------');
  paciente.update('CPF', (value) => 25, ifAbsent: () => '013.212.152-23',); // metodo para atualizar um elementos no map SE a chava Não o metodo ifAbsent o criará
  print(paciente);
  print('-----------------------');
  print(paciente['sexo']);
  print('-----------------------');

  // varrendo os elementos do map OBS: Não pode ser usado com metoros async
  paciente.forEach((key, value) { 
    print('${key}: ${value}');
  });
  print('-----------------------');

  // varrendo os elementos do map quando tiver dentro de um metodo asyncrono
  for( var entry in paciente.entries) { 
    print('${entry.key}: ${entry.value}');
  }


  for( var key in paciente.keys) { 
    print('Chave: ${key}');
  }
  print('-----------------------');

  for( var value in paciente.values) { 
    print('Valores: ${value}');
  }
  print('-----------------------');

  // retornando um novo map agora com os valores todos em string e UpperCase
  var novoMapPacientes = paciente.map((key, value){ 
    return MapEntry(key, value.toString().toUpperCase());
  });
  print(novoMapPacientes);
  print('-----------------------');

  var mapa = <String, Object>{
    'nome': "Ricardo",
    'cursos':[
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor Curso do Mundo',
      },
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor Curso do Mundo',
      },
    ],
  };



}