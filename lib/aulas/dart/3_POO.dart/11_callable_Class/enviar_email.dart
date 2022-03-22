class EnviarEmail{


  bool call(String email){
    print('Chamando método call!');
    return enviar(email); //--> chamando a função de enviar email
  }

  bool enviar(String email){
    print('Email enviado com Sucesso!');
    return true;
  }
}