import 'metodos/metodoTotalPorSexo.dart';
import 'metodos/metodo_descobre_maior_menor_idade.dart';
import 'metodos/metodo_exclui_menor_18.dart';

void main(){
  // Detalhe sobre a String
  // A String é composta por 3 campos (nome|idade|sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leandro|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilhemer|15|Masculino',
    'Manuela|85|Feminino',
    'Leandro|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima
  //! 1 - Remova os pacientes duplicados e apresente um nova lista
  //! 2 - Me mostre a quantidade de pessos por sexo(Masculino e Feminino) e depois apresente o nome delas
  //! 3 - Filtre e deixe a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encotre a pessoa mais velha e apresente o nome dela.

  var listPessoas = pessoas.toSet().toList();
  listPessoas.forEach((pessoa) => print('Nome: $pessoa'));
  
  descTotalPorSexo(listPessoas);
  //print(listPessoas);

  excluiMedor18(listPessoas);

  var pessoaMaisVelha = decobriMaiorMenorIdade(listPessoas)[0];
  var pessoaMaisNova = decobriMaiorMenorIdade(listPessoas)[1];

  print('-------------------------------');
  print('A pessoa com a maior idade na lista é:');
  print(pessoaMaisVelha);

  print('-------------------------------');
  print('A pessoa com a menor idade na lista é:');
  print(pessoaMaisNova);


  
}