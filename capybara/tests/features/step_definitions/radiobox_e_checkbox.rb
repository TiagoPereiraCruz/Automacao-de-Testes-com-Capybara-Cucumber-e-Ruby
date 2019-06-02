Quando("eu marco um checkbox e um radiobox") do
  visit "/buscaelementos/radioecheckbox"
  find("label", text: "White").click
  check("purple", allow_label_click: true)
  uncheck("purple", allow_label_click: true)
  choose("red", allow_label_click: true)
  sleep 3
end
