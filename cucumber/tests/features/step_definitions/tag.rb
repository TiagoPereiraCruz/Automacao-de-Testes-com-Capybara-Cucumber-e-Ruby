Quando("eu divido dois numeros {int} \/ {int}") do |int, int2|
  @resultado = int / int2
end

Então("vejo o resultado da divisão") do
  expect(@resultado).to eql 5
end

Quando("eu multiplico dois numeros {int} * {int}") do |int, int2|
  @resultado = int * int2
end

Então("vejo o resultado da multiplicação") do
  expect(@resultado).to eql 20
end
