class Musico

  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "#{self.class} deve implementar o metodo 'tocar partitura'"
  end
end

class Pianista < Musico

  def tocar_partitura(peca)
    "#{nome} com instrumento #{instrumento} esta tocando a peca #{peca}"
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    "#{nome} com o instrumento #{instrumento} esta tocando a peca #{peca}"
  end
end

class Maestro

  def initialize(musicos)
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    @musicos.each do |m|
      puts m.tocar_partitura(peca)
    end
  end

  def mudar_foco(estado)
    @musicos.map{ |m| "#{m.nome} agora esta #{estado}!"}
  end

end

if __FILE__ == $0
  
  musicos = [
    Pianista.new("kousei", "Piano"),
    Violinista.new("Kaori", "Violino")
  ]

  print "Peça: "
  peca = gets.chomp

  maestro = Maestro.new(musicos)

  maestro.iniciar_ensaio(peca)
 
  puts  maestro.mudar_foco("Concentrado")
end
