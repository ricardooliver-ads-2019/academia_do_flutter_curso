


// uma função void ela nao possui um valor de retorno
void main(){
  final valorCalculado = somaInteiros(5, 20);
  print("A soma dos valores é $valorCalculado");
  print('A soma de 10.2 + 10.2 é: ${somaDouble(numero1: 10.2, numero2: 10.2)}');
  print('Multiplicação de 8 + 5 é: ${multiplica(num1: 8, nun2: 5)}');
  print('Divisão ${divisao(num1: null, nun2: 5)}');
  print('Subtração ${subtracao( valor2: 10)}');
  print(trocaValor(10,5));
}

int somaInteiros(int v1, int v2){
  print('Execultando a soma de inteiros');
  return v1 + v2;
}

// Parâmetros

// Parametros Obrigatorios por Default (int nun1, int nun2)
// Parametros Nomeados ({int? numero1, int? numero2}) --> paremetros nomeados por patrao aceitam null
// Parametros Requeridos ({required int valor1, required int valor2}) --> com o termo required passa ser obrigatorio a passagem dos parametros
// Parametros Opicional ([int nun1, int nun2])
//! Parametros nomeados são nullables por default
//! Parametros nomeados podem ser promovidos para non-null com checagem de null

somaDouble({double? numero1, double? numero2}){

  if (numero1 != null && numero2 != null ) {
    return numero1 + numero2;
  }

  return 0;
 
}

double multiplica({required double num1, required double nun2}){

    return num1 * nun2;

}

double divisao({required double? num1, required double nun2}){
    num1 ??= 0; // se o valor for null ela vai atribuir o valor 0 para a vairavel num1
    //if (num1 == null) {
    //  num1 = 0;
    //}
    return num1 / nun2;

}

double subtracao({double valor1 = 0,  double valor2 =0}){
  return valor1 - valor2;
}

trocaValor([int valor1 = 0, int valor2 = 0 ]){
  var aux = valor1;
  valor1 = valor2;
  valor2 = aux;
  return "Valor 1 agora é: $valor1, e valor2 agora é: $valor2";
}

parametrosNormaisComNomeados(int numero, {required String nome, int idade = 0}){

}