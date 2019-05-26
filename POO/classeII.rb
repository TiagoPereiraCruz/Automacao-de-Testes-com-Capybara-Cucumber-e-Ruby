class ClasseMae
  def correr
    puts "a mãe corre"
  end
end

class ClasseFilha < ClasseMae
  def correr
    puts super
    puts "a filha corre"
  end
end

objeto = ClasseFilha.new
objeto.correr
