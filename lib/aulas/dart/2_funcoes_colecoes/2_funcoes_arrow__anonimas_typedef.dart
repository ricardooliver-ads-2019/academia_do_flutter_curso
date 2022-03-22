//! funções são divididas em 3 partes 
// Tipo de Retorno
// Nome da função
// Parametros de entrada (normais, nomeados e opicionais)
// 
// Funções Arrows --> São funções que podem ser esquitas em uma linha de código
// Funções Anonimas --> São funções que não possuem nomes


int somaInt(int num1, int num2) => num1+ num2; //--> Ex. de um função arrow

var funcaoQualquer = (){ //--> A variavel aqui esta recebendo uma função aninima
  print('Hello, World!');
  return 2022;
};

void recebeUmaFuncaoComoPArametro(Function(String nome) funcaoQueRecebeONome){
  var msg = "Essa é uma mensagem";
  funcaoQueRecebeONome(msg);
}

void main(){
  print(somaInt(5, 4));
  print(funcaoQualquer());

  recebeUmaFuncaoComoPArametro((nome){
    if(nome.isEmpty){
      print('nome veio vazio');
    }else{
      print(nome);
    }
  });
  
}

