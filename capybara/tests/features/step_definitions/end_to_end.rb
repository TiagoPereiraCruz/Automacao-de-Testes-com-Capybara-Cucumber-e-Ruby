Quando("eu cadastro o usuário") do
  visit "/users/new"
  fill_in(id: "user_name", with: "Tiago")
  find("#user_lastname").set("Pereira")
  find("#user_email").send_keys("tpc@gmail.com")
  find('input[value="Criar"]').click
end

Então("verifico se o usuário foi cadastrado") do
  texto = find("#notice")
  expect(texto.text).to eql "Usuário Criado com sucesso"
end

Quando("edito um usuário") do
  find(".btn.waves-light.blue").click
  find('input[value="Criar"]').click
end

Então("verifico se o usuário foi editado") do
  texto = find("#notice")
  expect(texto.text).to eql "Seu Usuário foi Atualizado!"
end
