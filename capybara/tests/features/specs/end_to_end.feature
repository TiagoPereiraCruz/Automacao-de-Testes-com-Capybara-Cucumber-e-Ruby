#language: pt

@end_to_end
Funcionalidade: end to end

  Cenário: Cadastro end to end
    Quando eu cadastro o usuário
    Então verifico se o usuário foi cadastrado

  Cenário: editar end to end
    Quando edito um usuário
    Então verifico se o usuário foi editado