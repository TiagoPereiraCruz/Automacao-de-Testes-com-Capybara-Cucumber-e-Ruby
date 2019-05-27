Quando("realizo a media") do
  @media = @soma / 2
end

Então("vejo o resultado da media") do
  expect(@media).to eql 5
end
