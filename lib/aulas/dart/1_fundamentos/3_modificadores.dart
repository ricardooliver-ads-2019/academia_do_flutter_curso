
// ====================== const ============================
// Não podem ser alteradas depois de inicializadas (IMUTÁVEIS),
// São definidas no programa em tempo de complilação (RUNTIME),
// Não podem receber valores de outras variaveis, a não ser que essa variavel tambem sejá um const;

// ignore_for_file: unused_local_variable

const String nome ='Ricardo';
// nome = 'Ricardo Nascimento';


// ====================== final ============================
// Não podem ser alteradas depois de inicializadas (IMUTÁVEIS),
// São definidas no programa em tempo de execução (RUNTIME),


void main(){
  print(nome);
  //const nome3 = retorno();
  //const lista = [];
  //print(lista);
  //lista.add('adicionando um elemento na lista final');
  //print(lista);


  final String nome2 = retorno();
  final lista2 = [];
  print(lista2);
  lista2.add('adicionando um elemento na lista2 final');
  print(lista2);
  
}

retorno(){
  return 'olá';
}