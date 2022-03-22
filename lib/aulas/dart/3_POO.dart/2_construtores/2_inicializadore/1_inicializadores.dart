import 'cliente.dart';
// TOMAR CUIDADO COM O USO DO "late" e "!""
// late e o ! (FORCE NON NULL)

late final nome;
void main(){
  var cliente = Cliente(nome: 'Carlos');
  cliente.nome = 'Carlos';
  print(cliente.nome);

  //print(cliente.idade!.toString());
  print(cliente.idade?.toString() ?? '');

  nome = 'Rodrigo R';
  print(nome);
  nome ='Rahman';
}