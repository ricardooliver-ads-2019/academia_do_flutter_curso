// Assingnment_operators [= -= /= %= >>= ^= // += *= ~/= <<= &= |=] ---> "São opradores de assinatura para atribuição da propria variavel"

String? nome;

void main(){

  var numero = 1;
  print(numero);
  numero +=2;
  print(numero);

  var num2 = 2.0;
  num2 /= 1.0;

  print(num2);

  print(nome);

  nome ??= "Carlos"; // "orOperator" mesmo coisa que o if (nome == num){ nome = "Carlos"}

  if(nome == null){
    nome = "Ricardo";

  }

  print(nome);


}