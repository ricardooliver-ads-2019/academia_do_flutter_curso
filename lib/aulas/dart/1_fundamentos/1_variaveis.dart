
// Tipos de Variaveis

// num --> é a classe pai de todos os tipos de numeros ou seja o int e double herdao as suas caracreristicas 
// num pode receber qualque tipo de número
  num qualquerNumero = 3.5;
  num qualquerNumero2 = 3;
//-------
// int --> Números inteiros (1, 52, 100...)
  int numeroInteiro = 2;
  var numeroInteiro2 = 3;
//-------
// double --> Números flutuantes (1.5, 5.2, 100.00...)
  double numeroQuebrado = 8.5;
  var numeroQuebado = 3.5;
//-------

// boolean --> variaveis que recebem true ou false
bool veradeiro = true;
var falso = false;

// string é o tipo de variavel que pode receber texto e caracteres como valor ('Ricardo', '%@#$@#$%')
  String testo = 'Ricardo';
  var caracteres ='#%%¨2HEERG';
//-------

// Object --> Tipo que recebe qualquer coisa menos (null)
Object qualquerCoisa = 'Texto%'; 
Object qualquerCoisa2 = 1;
Object qualquerCoisa3 = 45.8;
Object qualquerCoisa4 = ['T', 1, 2.5];

// dynamic --> Tipo que recebe qualquer coisa e ate o valor null
dynamic tbmAceitaDeTudo = null;
dynamic tbmAceitaQualquerCoisa = '55fwew';
dynamic tbmAceitaQualquerCoisa2 = 5;
dynamic tbmAceitaQualquerCoisa3 = 1.5;
dynamic tbmAceitaQualquerCoisa4 = ['T', 1, 2.5,['lista']];

void main(){
  print(qualquerCoisa4);
  print(tbmAceitaQualquerCoisa4);
}