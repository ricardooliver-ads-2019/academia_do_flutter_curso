import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/model_cidade.dart';
import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/model_user.dart';
import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/user_model.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
 //buscarCepp();

 await buscarUser();
 print('------------');
 await buscarUser2();


}

Future<void> buscarCepp() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    //var responseData = convert.jsonDecode(response.body);
    //if (responseData is Map) {
    //  print(responseData['cep']);
    //  print(responseData['bairro']);
    //  print(responseData['logradouro']);
    //  print(responseData['localidade']);
    //  print(responseData['uf']);
    //}
    var cidade = ModelCidade.fromJson(response.body);
    print(cidade);
    print(cidade.toMap()); // tranformando a class model em um map
    print(cidade.toJson()); // tranformando em um json 
  }else{
    print('Erro!!');
  }
}

Future<void> buscarUser() async{
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var user = ModelUser.fromJson(response.body);
    print(user);
  }else{
    print('Erro!!!');
  }
  await Future.delayed(Duration(seconds: 30));

}


Future<void> buscarUser2() async{
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var user = UserModel.fromJson(response.body);
    print(user);
  }
}
