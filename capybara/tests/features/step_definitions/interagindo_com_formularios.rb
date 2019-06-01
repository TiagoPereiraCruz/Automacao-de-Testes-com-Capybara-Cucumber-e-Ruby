Quando("eu faco cadastro") do
  visit "/users/new"
  fill_in(id: "user_name", with: "Tiago")
  find("#user_lastname").set("Pereira")
  find("#user_email").send_keys("tpc@gmail.com")
  fill_in(id: "user_address", with: "rua 100")
  find("#user_university").set("salvador")
  find("#user_profile").send_keys("qa")
  fill_in(id: "user_gender", with: "masculino")
  find("#user_age").set("30")
  find('input[value="Criar"]').click
end

Entao("verifico se fui cadastrado") do
  texto = find("#notice")
  expect(texto.text).to eql "Usuário Criado com sucesso"
end
