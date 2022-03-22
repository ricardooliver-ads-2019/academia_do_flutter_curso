
void excluiMedor18(List<String> listPessoas){
  var listDadosPessoas = <dynamic>[];
  listPessoas.forEach((element) {
    listDadosPessoas.add(element.split('|'));
  });
  print('----------------------------------');
  
  for (var i = 0; i < listDadosPessoas.length; i++) {
    if (int.parse(listDadosPessoas[i][1]) < 18) {
      
      var string = '${listDadosPessoas[i][0]}'+'|'+'${listDadosPessoas[i][1]}'+'|'+'${listDadosPessoas[i][2]}';
      //print(string);
      listPessoas.remove(string);
    }
  }
  print('----------------Lista só com os Maiores de 18------------------');
  listPessoas.forEach((pessoas)=>print('Nome: $pessoas'));
}

