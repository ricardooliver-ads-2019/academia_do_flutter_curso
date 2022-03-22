var listaDeLista = [[1,2] , [3,4]];
var listaNova = [...listaDeLista[0], ...listaDeLista[1]]; //--> criando uma nova lista com todos os elementos da outra lista
var listaNova2 = listaDeLista.expand((num) => num).toList(); //--> criando uma nova lista com todos os elementos da outra lista
var listaNomes = ['Rodrigo', 'Carlos', 'Diogo', 'João'];
var listaNomesOrnenada = ['Rodrigo', 'Carlos', 'Diogo', 'João'].sort();//--> metodo para ordenar uma lista
var listaNomes2 = ['Jessica|25', 'Yuri|34', 'Elton|34', 'Irinel|18'];
void main(){
  var numeros = List.generate(10, (index) => index); // --> está genrando uma lista de numeros inteiros
  numeros.forEach(print); //--> percore uma lista
  print('----------------------------');
  print(listaDeLista[1][1]);
  print('----------------------------');
  print(listaDeLista);
  print('----------------------------');
  print(listaNova);
  print('----------------------------');
  print(listaNova2);
  print('----------------------------');
  if (listaNomes.any((nome) => nome == 'João')) { 
    // --> o linta.any "Faz uma busca na lista para saber se tem ou não terminado elemento na lista"
    print('Tem Jão');
  } else {
    print('Não tem João');
  }

  if (listaNomes.every((nome) => nome == 'João')) { 
    // --> o lista.every "Faz uma busca na lista para saber se um determidado elento contem em todos os itens dessa lista"
    print('Tem Jão');
  } else {
    print('Não tem João');
  }

  var listaPaciente = [...listaNomes2];
  print(listaPaciente);
  listaPaciente.sort((paciente1, paciente2){ 
    // metodo sort com uma função que possibilita fazer um modelo de ordenação personalizado;
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]); // --> metodo que transforma um numero string em um numero int
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
      
    } else if(idadePaciente1 == idadePaciente2){  
      return 0;

    } else {
      return -1;

    }
  });
  print(listaPaciente); //--> lista agora esta ordenada pela idade

  
  print(listaNomes2);
  listaNomes2.sort((paciente1, paciente2){ 
    // metodo sort com uma função que possibilita fazer um modelo de ordenação personalizado;
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]); // --> metodo que transforma um numero string em um numero int
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPaciente); //--> lista agora esta ordenada pela idade
}

