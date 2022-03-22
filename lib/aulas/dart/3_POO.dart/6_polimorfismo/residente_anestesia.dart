import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista{
  @override
  void operar() {
    // super.operar(); --> o super está chamando o metodo operar() do seu pai "Anestesista"
    print('Mdedico Residente Anestesia: --> Preparar e esterelizar os equipamentos');
  }
}