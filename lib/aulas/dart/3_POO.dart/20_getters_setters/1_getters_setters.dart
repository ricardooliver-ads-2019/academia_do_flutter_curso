
//Setters --> No Dart os método set só deve ser implementado quando eu presiço de uma regra de negocio para o atributo
void main(){
  var pessoa = Pessoa();
  pessoa.nome = 'Rodrigo Rahman';

}

class Pessoa{
  String? _nome;

  String? get nome => _nome;
  set nome(String? nome){
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}