

void main(){
  seqFibonacci(num: 233);
 
}

seqFibonacci({required int num}){
  num = num;
  int ant = 0;
  int atual = 1;
  int prox = 0;
  List sequienciaFibonacci =[0, 1];
  if (num >= prox) {
    while ( num > prox) {
      prox = ant + atual;
      sequienciaFibonacci.add(prox);
      ant = atual;
      atual = prox;
    }

    if (sequienciaFibonacci.any((numero) => numero == num)) {
      int termo = sequienciaFibonacci.indexWhere((element) => element == num);
      print('O número $num é o ${termo+1}º termo na sequencia do Fibonacci');

    }else{
      print('O número $num NÃO esta presente na sequencia do Fibonacci');
    }
  
    print(sequienciaFibonacci);

  }else{
    print('Error! Número invalido');
  }
  
}