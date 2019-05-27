#language: pt

@funcional
Funcionalidade: Calculo da subtração e soma
  Eu como usuario
  Quero fazer uma subtração e uma soma

  @tag_cenario
  Cenário: Fazer uma divisão
    Quando eu divido dois numeros 10 / 2
    Então vejo o resultado da divisão

  Cenário: Fazer uma multiplicação
    Quando eu multiplico dois numeros 10 * 2
    Então vejo o resultado da multiplicação