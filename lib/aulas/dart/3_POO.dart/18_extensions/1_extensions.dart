
// Exensions --> É uma capacidade que o dart dá para nós programandores de acresentarmos funções em classes já existentes ex: class String
import '2_saudacao_string_extension.dart';
import 'pessoa_extension.dart';
import 'pessoa_saudacao.dart';

void main(){
 String nome = 'Ricardo';
 print(nome.saudacao());

 var p1 =PesssoaSaudacao(nome: 'Carlos');

 print(p1.saudacao());
}