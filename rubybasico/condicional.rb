puts "digite um numero 0 ou 1"
v1 = gets.to_i

# if (v1 == 1)
#     puts 'valor igual a 1'
# elsif v1 == 2
#         puts 'valor igual a 2'
# else
#     puts 'vaor nao é igual a 1'
# end

# unless v1 == 2
#     puts 'condicao falsa'
# else
#     puts 'condicao verdadeira'
# end

case v1
when 0
  puts "digitou 0"
when 1
  puts "digitou 1"
else
  puts "opcao invalida"
end
