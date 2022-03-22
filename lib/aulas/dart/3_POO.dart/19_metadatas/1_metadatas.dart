// Metadatas no dart é todas as classes que se iniciam com @
// uma classe para ser do tipo metadata seu construtor que ser do tipo const
// o metadata devolve dotas as anotações que contem em uma classe

import 'dart:mirrors';
import 'fazer.dart';
import 'pessoa_metadata.dart';

void main(){
  final p1 = PessoaMetadata();
  var instanceMirror = reflect(p1);
  //print(instanceMirror.reflectee);
  var classMirror = instanceMirror.type;

  //ClassMirror.metadata.forEach(print);
  classMirror.metadata.forEach((annotation){
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer){
      print('CLASS!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      print('Quem: ${instanceAnnotation.quem}');
      print('O que:${instanceAnnotation.oque}');
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) { 
    if(declarationMirror is VariableMirror){
      declarationMirror.metadata.forEach((annotation){    
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer){
          print('VARIAVEIS!!!!!!!!!!!!!!!!!!!!!!!!');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que:${instanceAnnotation.oque}');
        }
      });
    }else if (declarationMirror is MethodMirror){
      declarationMirror.metadata.forEach((annotation) { 
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer){
          print('MÉTODOS!!!!!!!!!!!!!!!!!!!!!!!!');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que:${instanceAnnotation.oque}');
        }
      });
    }
  });
}