import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/9_repository_pattern/models/cidade_model.dart';
import 'package:http/http.dart' as http;

class CidadeRepository {
  
  Future<CidadeModel> buscarCidade(int cep) async {
    var url = 'https://viacep.com.br/ws/$cep/json/';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return CidadeModel.fromJson(response.body);
    }else{
      throw Exception();
    }
  }

}