import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {

  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['bairro']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
      print(responseData['uf']);
    }
  }


}