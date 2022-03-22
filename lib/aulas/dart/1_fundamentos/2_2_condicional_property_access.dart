String? nomeCompleto;

void main(){
  // null aware operator 
  // var nomeCompleto = nomeCompleto ?? 'Nome não preenchido';

  // IF Convencional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase()); // (!)--> foi colocada para garantir para o compilador q a variavel ñ é null
  } else {
    print('Nome não preenchido');
  }

  // Conditional Property Access

  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido'); 
}