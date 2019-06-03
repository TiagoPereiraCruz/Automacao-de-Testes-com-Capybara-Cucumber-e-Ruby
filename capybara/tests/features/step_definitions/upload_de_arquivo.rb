Quando("eu faço um upload de arquivo") do
  visit "/outros/uploaddearquivos"
  # attach_file('upload', 'C:\Automacao-de-Testes-com-Capybara-Cucumber-e-Ruby\capybara\tests\features\foto.jpg', make_visible: true)

  foto = File.join(Dir.pwd, "features/foto.jpg")
  attach_file("upload", foto, make_visible: true)
  sleep 3
end
