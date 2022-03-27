import 'dart:io';
/** FORMAS DE LEITURAS
 * Leitura: SINCRONA
 * Leitura: ASSINCRONA
 * Leitura: LINHA SINCRONA
 * Leitura: LINHA ASSINCRONA
 */
Future<void> main()async {
  var file = File('lib/aulas/dart/4_dart_async/10_trabalhando_com_arquivos/files/file.txt');
  //Leitura: SINCRONA
  var fileLista = file.readAsLinesSync();
  print(fileLista);
  //Leitura: ASSINCRONA
  print('--------------------------------');
  fileLista = await file.readAsLines();
  print(fileLista[2]);

  var fileEscrita = File('lib/aulas/dart/4_dart_async/10_trabalhando_com_arquivos/files/file2.txt');
  await fileEscrita.writeAsString('Vou ficar muito bom em flutter\n');
  await fileEscrita.writeAsString('Deus! me de sabedoria, ', mode: FileMode.append);
  await fileEscrita.writeAsString('para consegui alcançar meus objetivos, mas que acima de tudo seja feita a sua vontade.', mode: FileMode.append);
  //fileEscrita.writeAsStringSync('para consegui alcançar meus objetivos, mas que acima de tudo seja feita a sua vontade.', mode: FileMode.append);

  print('--------------------------------');

  var listNomes = ['Ricardo', 'Carlos', "Marcos", "Rita"];
  var fileEscrita2 = File('lib/aulas/dart/4_dart_async/10_trabalhando_com_arquivos/files/file3.txt');
  //var writeFile = fileEscrita2.openWrite(); //* sobscrever o arquivo, ou seja tudo será apagado e reescrito novamente
  var writeFile = fileEscrita2.openWrite(mode: FileMode.append); // não vai sobscrever o que já tem no arquivo

  listNomes.forEach((nome) => writeFile.write('$nome\n'));


}