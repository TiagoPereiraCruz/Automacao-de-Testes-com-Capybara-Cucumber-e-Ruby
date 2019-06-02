Quando("clico em um botão") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto desapareceu da tela com sucesso") do
  texto = find("#div1")
  expect(texto).to have_text "Você Clicou no Botão!"
  texto.assert_text(text, "Você Clicou no Botão!")
  texto.has_text?("Você Clicou no Botão!")

  find("#teste").click
  assert_no_text(text, "Você Clicou no Botão!")
  page.has_no_text?("Você Clicou no Botão!")
end
