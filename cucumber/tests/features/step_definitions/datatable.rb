Dado("que eu tenho umas laranjas") do |table|
  @laranjas = table.rows_hash["laranja"].to_i
end

Quando("eu corto {int} laranjas") do |valor1|
  @total = @laranjas - valor1
end

Então("eu verifico quantas laranjas sobraram inteiras") do
  expect(@total).to eql 8
end

Dado("que tenho umas laranjas") do |table|
  table.hashes.each do |valor|
    @laranjas = valor["laranja"].to_i
  end
end

Quando("eu chupo {int} laranjas") do |valor2|
  @resultado = @laranjas - valor2
end

Então("eu verifico quantas laranjas sobraram") do
    expect(@resultado).to eql 8
end
