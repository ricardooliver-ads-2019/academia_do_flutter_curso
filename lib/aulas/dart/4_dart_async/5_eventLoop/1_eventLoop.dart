// Event Loop funciona com o conceito de fila onde dentro dele existem dois tipos de filas ("Filas de Event", "Fila de Micro Task" )

// Filas de Envet --> São sempre FIFO (First in First Out) = Aprimeira que entra é a primeira que saia.
// Filas de Envet --> Será sempre uma execução assincrona
// Filas de Envet --> Tem baixa prioridade de execução (se comparado as micro task)
// Filas de Envet --> Deve executar os processos pesados(leitura, htpp, banco de dados ...) 

// -----

// Filas de Micro Tasks --> São sempre FIFO (First in First Out) = Aprimeira que entra é a primeira que saia.
// Filas de Micro Tasks --> Será sempre uma execução sincrona
// Filas de Micro Tasks --> Tem Alta prioridade de execução (se comparado as event)
// Filas de Micro Tasks --> Dever ser uma execução rápida

import 'dart:async';

void main(){ // void main é um micro task
  print('Inicio main');
  scheduleMicrotask(() => print('Microtask #1'));
  print(DateTime.now());
  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #1 delayed');
  });
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));
  scheduleMicrotask(() => print('Microtask #2'));
  print('fim main');
}

/**
 * Event
 * Future.dalayed - iniciou ==> 4
 * Future #2 - executou ==> 5
 * Future #3 - executou ==> 6
 * Future.dalayed - Finalizou ==> 7
 */

/**
 * MicroTask
 * Main - ok ==> 1 
 * Microtask #1 - ok ==> 2
 * Microtask #2 - ok ==> 3
 */