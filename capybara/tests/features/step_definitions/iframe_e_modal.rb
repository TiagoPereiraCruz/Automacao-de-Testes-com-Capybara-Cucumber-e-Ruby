Quando("entro no iframe e preencho os campos") do
  visit "/mudancadefoco/iframe"

  #mudando foco para o iframe
  within_frame("id_do_iframe") do
    fill_in(id: "first_name", with: "Tiago")
    fill_in(id: "last_name", with: "Pereira")
  end
end

Quando("entro no modal e verifico o texto") do
  visit "/mudancadefoco/modal"
  find(".modal-trigger").click

  within("#modal1") do
    texto = find("h4")
    expect(texto).to have_text "Modal Teste"
    find(".modal-close").click
  end
end
