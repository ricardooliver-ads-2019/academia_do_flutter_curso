import 'dart:convert';


class UserTypeModel {
  final String id;
  final String userId;
  final String name;

  UserTypeModel({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypeModel.fromMap(Map<String, dynamic> map) {
    return UserTypeModel(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypeModel.fromJson(String source) => UserTypeModel.fromMap(json.decode(source));
}
