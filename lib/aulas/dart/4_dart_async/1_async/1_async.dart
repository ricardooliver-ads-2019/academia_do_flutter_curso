//Um processo asycrono é um processo que não segue uma linha execução, ou seja pode haver chamadas de processos em paralelos 
//No Dart async é representado pela classe Future

void main(){
  print('Iniciando o Programa');
  processo2();
  var i =0;
  while(i<5){
    print(i);
    i++;
  }
  processo3();
  while(i>0){
    print(i);
    i--;
  }

}

void processo2(){
  print('inicio do Proc 2');
  Future.delayed(Duration(seconds: 3), (){
    print('fim do Proc 2');
  });
}

void processo3(){
  print('inicio do Proc 3');
  Future.delayed(Duration(seconds: 1), (){
    print('fim do Proc 3');
  });
  
}