import 'fazer.dart';

@Fazer(
  quem: 'Ricardo na class',
  oque: 'Estudar anotação da classe',
)
@deprecated
class PessoaMetadata {
  @Fazer(
    quem: 'Ricardo no atributo',
    oque: 'Estudar anotação do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Ricardo no Método',
    oque: 'Estudar anotação do Método',
  )
  void fazerAlgo(){
    
  }

}