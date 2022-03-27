import 'dart:convert';

import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/user_type_model.dart';

class UserModel {
  final String id;
  final String name;
  final String userName;
  final List<UserTypeModel> userTypes;
  UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: List<UserTypeModel>.from(map['user_types']?.map((x) => UserTypeModel.fromMap(x)) ?? const[]),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
