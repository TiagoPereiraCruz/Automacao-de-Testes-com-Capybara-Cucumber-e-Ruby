Quando("clico no botão") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto apareceu na tela com sucesso") do
  texto = find("#div1")
  expect(texto).to have_text "Você Clicou no Botão!"
  texto.assert_text(text, "Você Clicou no Botão!")
  texto.has_text?("Você Clicou no Botão!")
end
