decobriMaiorMenorIdade(List<String> listPessoas){
  var listDadosPessoas = <dynamic>[];
  var maior = 0;
  var menor = 0;
  var PessoaMaisVelha =''; 
  var PessoaMaisNova ='0'; 
  listPessoas.forEach((element) {
    listDadosPessoas.add(element.split('|'));
  });
  print('----------------------------------');
  
  for (var i = 0; i < listDadosPessoas.length; i++) {
    if(i==1){
      maior = menor = int.parse(listDadosPessoas[i][1]);
    }else{
      if (int.parse(listDadosPessoas[i][1]) > maior) { 
      maior = int.parse(listDadosPessoas[i][1]);
      PessoaMaisVelha = '${listDadosPessoas[i][0]} com ${maior} de idade.';
      }else{
        if (int.parse(listDadosPessoas[i][1]) < menor) {
          menor = int.parse(listDadosPessoas[i][1]);
          PessoaMaisNova = '${listDadosPessoas[i][0]} com ${menor} de idade.';
        }
      }
    }
  }
  return [PessoaMaisVelha, PessoaMaisNova];
}