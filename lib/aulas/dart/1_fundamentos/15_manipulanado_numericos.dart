void main(){
  final idade = 30;
  //print('Sua idade é ' + idade.toString());
  print('Sua idade é $idade');

  final valor = -20;

  if (valor.isNegative) { //ferifica se o valor passado é negativo e retrona true ou false
    print(valor);
    
  }

  final valorDouble = 10.65; 
  print(valorDouble.round());// arredonda para um valor inteiro 

  print(valorDouble.roundToDouble()); // arredonda o valor e mantem ele como um double

  var valorString = '30';
  var valorString2 = '30a';

  final valorInt = int.parse(valorString); // tenta converter uma string em um valor caso  nao consiga retornara uma exeção 
  print(valorInt);
  final valorInt2 = int.tryParse(valorString2); // tenta converter uma string em um valor caso  nao consiga retornara null para a variavel
  print(valorInt2);

  final precoCamisa = 78.4562;

  print(precoCamisa.toStringAsFixed(2));

}