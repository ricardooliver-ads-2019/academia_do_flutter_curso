// CLASSES --> grupo de caracteristicas 
// variaveis dentro de um classe é chamado de atributo
// funções em uma classe são chamamos de metodos de uma classe
// STATIC --> "Atributo ou um Método que tem um valor padão para todos os filhos dessa classe e Não teve ser auterado"
// Public --> atributos ou métodos Publicos "que podem ser acessados fora da classe onde fi criada"
// Private --> atributos ou métodos Privados "que NÃO podem ser acessados fora da classe onde fi criada"
class Camiseta{
  //Atributos de Instacia
  String? tamanho; // Public 
  String? _cor; // Private
  String? marca; // Public 

  // Atributos de Classe
  // Tem valor padrao para todos que objetos/ ou seja será igual para todos
  // Então por boa pratica é importante que esses atributos sejão estanciados como cons
  static const String _nome ='Camisata'; // Private

  //Métodos de Classe
  // Tem valor padrao para todos que objetos
  static String _recuperarNome()=> _nome; // Private

  //Métodos de Instacia
  String tipoDeLavagem(){ // Public 
    if (marca == 'Nike') {
      return 'Não pode ser lavada na maquina';
    } else {
      return 'Pode ser lavada na maquina';
    }
  }

  String? get cor => _cor;
  set cor(String? cor){
    if (cor != null) {
      if (cor.toLowerCase() == 'verde') {
        throw Exception('Não é possivel cadastrar a cor Verde');
      }
    }
  }
  
}