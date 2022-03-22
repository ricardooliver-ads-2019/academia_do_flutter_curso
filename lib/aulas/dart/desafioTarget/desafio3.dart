
void main() {
  var s = "Olá , Mundo";
  print(s);
  print(invertString(s));
}

String invertString(String strg) {
  var listLetras = strg.split('');
  var i     = 0;
  var fin   = strg.length - 1;
  while (i < fin) {
    var aux = listLetras[i];
    listLetras[i] = listLetras[fin];
    listLetras[fin] = aux;
    i++;
    fin--;
  }
  var frase ='';
  for (var letra in listLetras) {
    frase += letra;
  }

  return frase;
}
