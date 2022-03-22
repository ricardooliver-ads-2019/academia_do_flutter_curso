//! Baseado no array acima monte um relatorio onde;
// 1 - Apresente os pacientes com mais de 20 anos
// 2 - Apresente quantos pacientes existem para cada profição 
// 3 - Apresente a quantidade de pacientes que moram em SP



void main(){

  final pacientes = [
    'Rodrigo Rahman|38|Desenvolvedor|SP', 
    'Valdeir Carvalho|19|Estudando|MG', 
    'Diogo Ribeiro|35|Policial|RO',
    'Ricardo Oliveira|29|Desenvolvedor|RO', 
    'Luiza Silva|19|Dentista|AM', 
    'Otacilio Beleza|32|Desenvolvedor|',
    'Marcela Farias|18|Estudando|SP', 
    'Calos Mathias|20|Policial|MT'
  ];

  var dadosPacientes = [];

  pacientes.forEach((paciente) => dadosPacientes.add(paciente.split('|')));
  //print(dados);

  print('Pacientes com mais de 20 anos');
  for (var paciente in dadosPacientes) {
    //print(int.parse(paciente[1]));
    if (int.parse(paciente[1]) > 20) {
      print(paciente[0]);
    }
  }
  print('----------------------------------------');

 
 var desenvolvedores = [];
 var quat = 0;
  for (var paciente in dadosPacientes) {  
    if (paciente[2] == 'Desenvolvedor') {
      quat++;
      desenvolvedores.add(paciente[0]);
    }
  }
  print('Temos um total de $quat Desenvolvedores');
  desenvolvedores.forEach(print);
  print('----------------------------------------');

  print('Pacientes Moram em SP');
  for (var paciente in dadosPacientes) {
    if (paciente[3] == 'SP') {
      print(paciente[0]);
    }
  }
  print('----------------------------------------');

}