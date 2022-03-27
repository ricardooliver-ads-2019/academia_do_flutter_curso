
import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<UserModel?> findAllUser(int id) async {
    var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/$id';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return UserModel.fromJson(response.body);
    }
  }
}