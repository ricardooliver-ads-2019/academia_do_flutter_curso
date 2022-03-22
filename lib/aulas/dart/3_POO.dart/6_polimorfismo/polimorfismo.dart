// Polimorfismo é quando eu altero o comportamento de uma class

import 'anestesista.dart';
import 'medico.dart';
import 'obstreta.dart';
import 'pediatra.dart';
import 'residente_anestesia.dart';

void main() {
  // Parto!!!!
  var medicos = <Medico>[
    ResidenteAnestesia(),
    Anestesista(),
    Obstetra(),
    Pediatra(),
  ];


  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();    
  }
}