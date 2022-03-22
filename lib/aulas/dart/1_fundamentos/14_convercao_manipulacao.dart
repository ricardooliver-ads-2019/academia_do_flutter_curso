void main(){
  final nome = ' Rodrigo Rahman';

  var subStringNome= nome.substring(7);
  print(subStringNome);

  var subStringNome2= nome.substring(0, 7);
  print(subStringNome2);

  var sexo = 'Masculino';

  var sexoSigla = sexo.substring(0,1).toUpperCase();
  print(sexoSigla);
  if (sexoSigla == 'M') {
    print(sexoSigla);
    print('Olá seu sexo é Masculino');
    
  }

  if (sexo.startsWith('M')){ // /verifica  o primeiro elemento da string
    print('Olá seu sexo é Masculino');
  }

  if (nome.toLowerCase().contains('rahman')) { // faz a verificação para saber se na string conten esse trexo
    print('É da familia rahman');
    
  }

  // interpolação 
  var primeiroNome = 'Ricardo';
  var segundoNome = 'Oliveira';

  var saudacao = 'Olá' + primeiroNome + ' ' + segundoNome + ' sejá bem vindo';
  print(saudacao);

  print(segundoNome);

  print('Olá ${primeiroNome.toUpperCase()}');


  var paciente = 'Ricardo Oliveira|29|Professor do IFRO e Desenvolvedor Flutter';
  var dados = paciente.split('|');
  print(dados);
  for(var valor in dados){
    print(valor);

  }

  print('----------------------------------');

  dados.forEach((dado) => print(dado));

  print('----------------------------------');
  dados.forEach(print);

  var listPacientes = [
    'Ricardo Oliveira|29|Professor do IFRO e Desenvolvedor Flutter', 
    'Luiza Silva|19|Tecnica', 
    'Diogo Ribeiro|35|Policial Civil'
  ];

  listPacientes.forEach((paciente) {
    var dados = paciente.split('|');
    var nomeCompleto = dados[0];
    var sobreNomes = nomeCompleto.split('|');
    print(sobreNomes);
    print(sobreNomes.last);

   });
  
  print(listPacientes);

}
