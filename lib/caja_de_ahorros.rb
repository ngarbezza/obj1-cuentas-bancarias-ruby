require_relative 'cuenta_bancaria'

class CajaDeAhorros < CuentaBancaria

  def initialize
    super
    @cantidad_de_extracciones_mensuales = 0
  end

  def cantidad_de_extracciones_mensuales
    @cantidad_de_extracciones_mensuales
  end

  def puedo_extraer?(una_cantidad_de_dinero)
    super && no_supere_el_limite_de_extracciones_mensuales
  end

  def registrar_extraccion(una_cantidad_de_dinero)
    super
    @cantidad_de_extracciones_mensuales = @cantidad_de_extracciones_mensuales + 1
  end

  def no_supere_el_limite_de_extracciones_mensuales
    @cantidad_de_extracciones_mensuales < 5
  end

end
