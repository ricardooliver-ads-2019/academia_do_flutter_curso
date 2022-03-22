// Callable Class --> É a forma de criar uma classe e fazer a sua invocação como uma função
// Ponto negativo que em uma Callable Class não consigo usar o atalho Ctrl + Clik para ver sua estru

import 'enviar_email.dart';

void main(){

  var enviarEmail = EnviarEmail();

  enviarEmail('teste@gmail.com'); // --> chamei direto como uma função

  // no metodo tradicional "chamei uma instancia da minha classa e depois fiz a invocação do metodo enviar"
   enviarEmail.enviar('ricardo@gmail.com');

}