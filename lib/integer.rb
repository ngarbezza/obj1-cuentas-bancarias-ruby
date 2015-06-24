require_relative 'peso'

#
# Extensión de la clase Integer.
#
class Integer

  def pesos
    Peso.con_valor self
  end

end
