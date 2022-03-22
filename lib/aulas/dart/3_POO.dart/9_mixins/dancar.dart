import 'artista.dart';

// on --> só podem herdar Dancar se a class for do tipo Artista
// se não tivesse a condição todas as classes poderiam herdar Dancar
mixin Dancarino on Artista{

  String dancar(){
    return 'Dancando Forró';
  }
} 