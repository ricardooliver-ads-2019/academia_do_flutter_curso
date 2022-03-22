void main(){

   var numeros = List.generate(10, (index) => index);
   var nomes = ['Ricardo', 'Otavio', 'Carla', 'Marcela'];

   print('Imprimindo numeros com for covencional');
   for (var i = 0; i < numeros.length; i++){
     print(numeros[i]);
   }

   print('Imprimindo nomes com for covencional');
   for (var i = 0; i < nomes.length; i++){
     print(nomes[i]);
   }

   print('Imprimindo numeros com for-in');
   for ( var numero in numeros){
     print(numero);
   }

   print('Imprimindo nomes com for covencional e break');
   for (var i = 0; i < nomes.length; i++){
     print(nomes[i]);
     if (nomes[i] == 'Otavio'){
       break; // interrompre o laço forçando suaparada..
     }

   }

   print('Imprimindo numeros com for-in com break');
   for ( var numero in numeros){
     if (numero == 6) {
       break; // interrompre o laço forçando suaparada..
     }
     print(numero);
   }

   print('Imprimindo nomes com for covencional com continue');
   for (var i = 0; i < nomes.length; i++){

     if (nomes[i] == 'Otavio' || nomes[i] == 'Carla'){
       continue; // caso essa condição seja verdadeira o continue manda pular para a procima volta do laço e não executa
     }
    print(nomes[i]);

   }




}
