
// (??) --> null aware operator " Funciona como um ternario, ele cheka se a variavel é null e se for nula execulta uma coisa"


// ignore_for_file: unused_local_variable

String? nome;

void main(){
  var nomeCompleto = (nome != null) ? nome! +' Rahma' : 'Rodrigo Rahman';

  var sobreNome= 'Oliveira';
  var nomeCompleto2 = (nome ?? 'Ricardo') + sobreNome;
}