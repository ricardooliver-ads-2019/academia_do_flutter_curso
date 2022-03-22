// nullsafety

// Tipo de variaveis que aceita null como valor
dynamic aceitaTudo = null;
Object? qualquerCoisa = null;
String? texto = null;
num? qualquerNumero = null;
int? nunInt = null;
double? nunDouble = null;
bool? verdadeiroFalso = null;
List? lista = null;

// ( ! )  --> asumo para o compilador que ele não precisa conferir mais se essa variavel é null

// (late) --> me perpite adiar a inicialização de variaveis de nivel superior 

late String tipoLate;

void main(){
  bool? user;

  if(user != null){
    print(user);
  }

  // print(user!); --> 
}

// Variaveis locais não precisam ser inicializadas de inicio, porem devem ser inicializadas antes de serem usadas.
//Podem ser criadas sem valores e depois serem atribuidas.

