Quando("eu entro na janela e verifico a mensagem") do
  visit "/mudancadefoco/janela"

  # recebe uma janela que foi aberta pelo link
  janela = window_opened_by do
    click_link "Clique aqui"
  end

  # muda de foco pra janela
  within_window janela do
    expect(current_url).to eql "https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow"
    mensagem = find(".red-text")
    expect(mensagem).to have_text "Você Abriu uma nova janela!!"

    janela.close
    sleep 3
  end

  # segunda opção

  click_link "Clique aqui"

  # mudando pra ultima aba
  switch_to_window windows.last

  expect(current_url).to eql "https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow"
  mensagem = find(".red-text")
  expect(mensagem).to have_text "Você Abriu uma nova janela!!"

  windows.last.close
  sleep 3
end

Quando("eu entro no alert e verifico faço a ação") do
  visit "/mudancadefoco/alert"
  find("button[onclick='jsAlert()']").click
  page.accept_alert

  find("button[onclick='jsConfirm()']").click
  page.dismiss_confirm

  find("button[onclick='jsPrompt()']").click
  page.accept_prompt(with: "Tiago")

  find("button[onclick='jsPrompt()']").click
  page.dismiss_prompt
  sleep 2
end
