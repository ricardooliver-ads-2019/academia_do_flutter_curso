import 'dart:async';

Future<void> main() async { // void main é um micro task
  print('Inicio main');
  scheduleMicrotask(() => print('Microtask #1'));
  await Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() {
    var i = 0;
    while(i >=20000){

    }
    print('Future #2');
  });
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