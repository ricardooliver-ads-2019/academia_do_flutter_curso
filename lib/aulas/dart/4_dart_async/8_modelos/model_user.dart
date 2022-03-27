
import 'dart:convert';

import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/model_user_type.dart';

class ModelUser {
  final String id;
  final String name;
  final String userName;
  final List<ModelUserType> userTypes;
  ModelUser({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory ModelUser.fromMap(Map<String, dynamic> map){
    return ModelUser(
      id: map['id'] ?? '',
      name: map['name'] ?? '', 
      userName: map['username'] ?? '', 
      userTypes: map['user_types']?.map<ModelUserType>((type){
        return ModelUserType.fromMap(type);
      }).toList() ?? <ModelUserType>[],
    );
  }

  factory ModelUser.fromJson(String source) => ModelUser.fromMap(json.decode(source));

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((e) => e.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());


  @override
  String toString() {
    return 'ModelUser(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}

