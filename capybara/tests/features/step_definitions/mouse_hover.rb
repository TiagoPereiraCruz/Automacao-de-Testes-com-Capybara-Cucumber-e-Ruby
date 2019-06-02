Quando("seleciono o mouse hover") do
  visit "/iteracoes/mousehover"
  find(".activator").hover
  texto = find(".card-reveal")
  expect(texto).to have_text "Você usou o mouse hover!"
  sleep 3
end
