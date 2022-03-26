import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/8_modelos/model_cidade.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
 buscarCepp();


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
    print(cidade.bairro);
  }else{
    print('Erro!!');
  }
  print('hhhhhhhhhhhhhh');
}