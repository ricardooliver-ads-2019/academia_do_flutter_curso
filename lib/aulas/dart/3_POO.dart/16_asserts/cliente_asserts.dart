
class ClienteAsserts {
  
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;



  ClienteAsserts({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : 
  assert((cpf != null) ? nome != null && razaoSocial == null && cnpj ==null : true, 'Você enviou cpf junto com cnpj'),
  assert((cpf == null) ? nome == null && razaoSocial != null && cnpj !=null : true, 'Você enviou cpf junto com cnpj');
  
}
