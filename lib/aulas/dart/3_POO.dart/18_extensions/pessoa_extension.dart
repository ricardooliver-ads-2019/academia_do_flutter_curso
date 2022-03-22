import 'pessoa_saudacao.dart';

extension PessoaSaudacaoExtension on PesssoaSaudacao{
  String saudacao(){
    return 'Olá $nome bem vindo a academia do flutter';
  }
}