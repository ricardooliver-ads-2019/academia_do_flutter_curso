

void descTotalPorSexo(List<String> listPessoas){
  var listDadosPessoas = <dynamic>[];
  var totalM =0;
  var totalF =0;
  var pessoasM = <String>[];
  var pessoasF = <String>[];

  listPessoas.forEach((element) {
    listDadosPessoas.add(element.split('|'));
  });

    for (var i = 0; i < listDadosPessoas.length; i++) {
      if (listDadosPessoas[i][2] == "Masculino") {
        totalM++;
        pessoasM.add(listDadosPessoas[i][0]);
      }else{
        totalF++;
        pessoasF.add(listDadosPessoas[i][0]);
      }
    }

    print('O total de pessoas do sexo Masculino é $totalM');
    print('E são elas');
    pessoasM.forEach((nome) => print(nome));
    print('----------------------------------');
    print('O total de pessoas do sexo Feminino é $totalF');
    print('E são elas: ');
    pessoasF.forEach((nome) => print('$nome,'));
    //print('----------------------------------');
}