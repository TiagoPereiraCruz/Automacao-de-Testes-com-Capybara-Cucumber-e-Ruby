# Classe sempre começa com letra maiscula
# Uma classe é composta por atributos, métodos e construtores

class ClassName

  # é a mesma coisa que o get e o seter do java
  # Permite ler e escrever
  attr_accessor :nome

  # só permite ler
  # attr_reader :nomeone

  # só permite escrever
  # attr_writer :nomedois

  # metodo
  # Nome sempre minusclo
  # Se for composto, sempre com underline

  def metodo
    puts "corpo do metodo"
  end

  def metodo_composto
    puts "metodo composto"
  end
end

class Heranca < ClassName
end

objeto = ClassName.new
objeto.nome = "Tiago"
puts objeto.nome
objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new

objeto_heranca.metodo_composto
