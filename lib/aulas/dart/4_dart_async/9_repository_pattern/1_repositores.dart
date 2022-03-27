import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/9_repository_pattern/repositores/cidade_repository.dart';
import 'package:academia_do_flutter_curso/aulas/dart/4_dart_async/9_repository_pattern/repositores/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  try {
    var cidade = await cidadeRepository.buscarCidade(76871231);
    print(cidade); 
    print('---------------');
    var user = await userRepository.findAllUser(1);
    print(user?.userName ?? 'Usuário não encontrado');
    //if (user != null) {
    //  print(user.userName);
    //} else {
    //  print('Usuario não encontrado');
    //}
  } catch (e) {
    print('Erro!');
  }
}