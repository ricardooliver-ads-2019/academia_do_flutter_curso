// -- imports -- "É ele quem nós da a capacidade trazer funções que estão em arquivos diferentes"

import 'metodos/soma.dart' as soma;
import 'metodos/soma/soma.dart'as nova_soma; // --> se refere ao caminho relativo que tera que percorer para importar o metodo
//import 'package:dart_funcoes_colecoes/8_imports/metodos/soma.dart'; se refere a raiz da minha pasta lib para importar o metodo
void main(){
 var totalDouble = soma.somaDouble(1.5, 25);
 print('--------------');
 print(totalDouble); nova_soma.somaInteiros(5,14);
 print('--------------');
}