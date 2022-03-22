/// Igualdade por referencia de memoria --> "É a regra dos ponteiros onde as variaveis podem apontar para o mesmo local de memoria"  
/// ex: [var nome = Pessoa();]
///     [var nome2 = nome;   ]
///
/// equals "Devemos implementar o equals quando independente da referencia de memoria queremos ferificar se os objetos são igual e como ele são iguais"
/// toda vez que implementarmos os equals devemos também implementar o hashcode deles para serem iguais["Pois tem coleções que usão o hashcode, ou seja a sua referencia de memoria, para fazer a comparação de igualdade "]

class PessoaEquals {
  String nome;
  String email;
  String telefone;
  PessoaEquals({
    required this.nome,
    required this.email,
    required this.telefone,
  });

  //@override
  //bool operator ==(Object other){ //--> ferificação idependente do tipo do objeto
  //  
  //  if (identical(this, other)) return true; //--> ferifica se são a mesma referencia de memoria
  //
  //  if (other is Pessoa) { // --> é uma pessoa / se não já não é igual
  //    if (other.nome == nome) {
  //      if (other.email == email) {
  //        return true;
  //      }else{
  //        return false;
  //      }
  //    } else {
  //      return false;
  //    }
  //
  //  } else {
  //    return false;
  //  }
  //}

  //@override
  //bool operator ==(Object other){ //--> ferificação idependente do tipo do objeto
  //  var isEquals = false;
  //
  //  if (other is PessoaEquals) { // --> é uma pessoa / se não já não é igual
  //    if (other.nome == nome) {
  //      if (other.email == email) {
  //        isEquals = true;
  //      }
  //    } 
  //  } 
  //  return isEquals;
  //}

  //@override
  //bool operator ==(Object other){ //--> ferificação idependente do tipo do objeto
  //  
  //  if (identical(this, other)) return true; //--> ferifica se são a mesma referencia de memoria
  //
  //  return other is PessoaEquals
  //      && other.nome == nome
  //      && other.email == email;
  //}
  //
  //
  //@override
  //int get hashCode{
  //  return nome.hashCode^ email.hashCode;
  //}

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PessoaEquals &&
      other.nome == nome &&
      other.email == email &&
      other.telefone == telefone;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;


  //@override
  //String toString() { //--> reescrevendo a forma como a classe pessoa será printada 
  //  return """
  //    Pessoa:
  //      nome: $nome,
  //      email: $email,
  //      tel: $telefone,
  //  """;
  //}

  

  @override
  String toString() => 'PessoaEquals(nome: $nome, email: $email, telefone: $telefone)';
}
