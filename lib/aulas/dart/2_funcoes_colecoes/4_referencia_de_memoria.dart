// Cuidado com metodos que alteram na memoria

void main(){
  var lista = ['Rodrigo'];
  print(lista.hashCode);
  funcao(lista);
  print(lista.hashCode);
  print('--------------------');
  var nome = 'Ricardo';
  print(nome.hashCode);
  funcString(nome);
  print(nome.hashCode);

  
}

void funcao(List<String> nomes){
  nomes.add('Rahman');
}

void funcString(String nomes){
  nomes = 'Olá :'+ nomes;
  print(nomes.hashCode);
}