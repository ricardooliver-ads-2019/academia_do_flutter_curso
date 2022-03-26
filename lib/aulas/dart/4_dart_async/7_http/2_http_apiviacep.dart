import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {

  //await buscarCep();
  //await buscarPost();
  //await buscarCepErro();
  //await salvarPost();
  await atualizarPost();

}

Future<void> buscarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData.runtimeType); // --> quando quero saver o tipo do meu retorno (se veio como um lista ou como map)

    if (responseData is List) {
      responseData.forEach((element) => print(element['id']));
    }
  }
}


Future<void> buscarCep() async {
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

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/01001000//json/';
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
  }else{
    print('Tem Erro!');
    print(response.statusCode);
    print(response.body);
    print(response.reasonPhrase);
    print(response.headers);
  }
}

Future<void> salvarPost() async{
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };

  var response = await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async{
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapaRequest = {
    'id': 1,
    'title': 'Post Alterado',
    'body': 'Descricao do post',
    'userId': 1
  };

  var response = await http.put(Uri.parse(url), 
  body: convert.jsonEncode(mapaRequest),
  headers: {
    'Content-type': 'application/json; charset=UTF-8',
  });
  print(response.statusCode);
  print(response.body);
}