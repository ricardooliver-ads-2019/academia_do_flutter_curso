
import 'dart:convert';

class ModelUserType {
  final String id;
  final String userId;
  final String name;

  ModelUserType({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory ModelUserType.fromMap(Map<String, dynamic> map){
    return ModelUserType(
      id: map['id'] ?? '', 
      userId: map['userId'] ?? '', 
      name: map['name'] ?? '',
    );
  }

  factory ModelUserType.fromJason(String source) => ModelUserType.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'ModelUserType(id: $id, userId: $userId, name: $name)';
}


