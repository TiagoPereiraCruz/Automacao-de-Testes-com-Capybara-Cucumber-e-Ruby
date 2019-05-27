Dado("que eu tenho {int} laranjas na bolsa.") do |valor|
  @laranjas = valor
end

Quando("eu coloco {int} laranjas na bolsa") do |valor2|
  @coloquei = valor2
  @resultado = @laranjas + valor2
end

Então("eu verifico se o total de laranjas na bolsa é {int}") do |total|
  expect(@resultado).to eql total
end

Quando("eu tiro {int} laranjas na bolsa") do |valor3|
  @retiro = valor3
  @resultado = @laranjas - valor3
end
