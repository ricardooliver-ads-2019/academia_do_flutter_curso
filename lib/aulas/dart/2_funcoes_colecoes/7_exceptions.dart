
// Temos hierraquia de exceptions
void main(){
  var idade = '38 anos';
  String? nome;

  try { // --> tente fazer isso 
    print(int.parse(idade)); // --> converter essa String para um valor int

    if(nome == null){
      throw Exception(); // --> estou forçando um tipo de erro
    }

  } 
  on TypeError { // --> com o on tenho a posibilidade te especificar o tipo de erro
    print('Erro Type Error');

  } on Exception {
    print('Erro: nome == Null');

  }catch (e) { // --> se não conseguir faça isso
    print('Não foi possivel converter a String para int');

  }

  print('-----------------------------------------');

  try { // --> tente fazer isso 
    print(nome!.toLowerCase()); // --> // ! afirmei para o dart que a variavel não era nula, e deu erro

  } // e =={ERROR} : "É o Erro em si" | s =={Stack Trace}: "Mostra os detalhes inclusive a linha onde o erro aconteceu"
  on FormatException catch(e, s){ // --> com o on tenho a posibilidade te especificar o tipo de erro
    print('Erro ao converter  idade');
    print(e); // e =={ERROR} : "É o Erro em si"
    print('--------------------------------');
    print(s); // s =={Stack Trace}: "Mostra os detalhes inclusive a linha onde o erro aconteceu"

  }
  on TypeError catch(e, s){ // --> com o on tenho a posibilidade te especificar o tipo de erro
    print('Erro Type Error');
    print(e); // e =={ERROR} : "É o Erro em si"
    print('--------------------------------');
    print(s); // s =={Stack Trace}: "Mostra os detalhes inclusive a linha onde o erro aconteceu"

  } catch (e) { // --> se não conseguir faça isso
    print('Erro ao executar o programa');

  } finally{ // --> esse metodo determina q tudo nesse bloco vai ser executado independente de qualquer coisa
    print('finally é a ação que será sempre executada');
  }

  
}