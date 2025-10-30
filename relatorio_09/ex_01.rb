class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

def preco_base=(novo_preco)
 novo_preco = novo_preco.to_f
  raise ArgumentError, "Preço base deve ser numérico > 0" if !novo_preco.is_a?(Numeric) || novo_preco <= 0
  @_preco_base = novo_preco
end


  def preco_final
    preco_base
  end

  def to_s
    "#{nome} - valor R$#{preco_base}"
  end
end

class DrinkLenda < Drink

  attr_reader :anos_desde_criacao

  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao.to_i
    raise ArgumentError, "Anos não pode ser negativo" if @anos_desde_criacao.negative?
  end
  
  def preco_final
    preco_base.to_f + (5 * anos_desde_criacao)
  end

  def to_s
    "#{nome} - valor:  R$#{preco_final}, existe a #{anos_desde_criacao} anos"
  end
end

if __FILE__ == $0
  begin
    print "Nome do drink: "
    nome = gets.chomp

    print "Preço base: "
    preco_base = gets.chomp.to_f

    print "Idade do drink: "
    anos = gets.chomp.to_i

    bebida =
      if anos == 0
        Drink.new(nome, preco_base)
      else
        DrinkLenda.new(nome, preco_base, anos)
      end

    puts "Resultado"
    puts bebida.to_s
  rescue ArgumentError => e
    warn "Entrada inválida: #{e.message}"
  end
end
