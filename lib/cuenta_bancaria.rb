class CuentaBancaria
  def puedo_extraer?(una_cantidad_de_dinero)
    una_cantidad_de_dinero <= @saldo
  end

  def extraer(una_cantidad_de_dinero)
    if self.puedo_extraer?(una_cantidad_de_dinero)
      registrar_extraccion(una_cantidad_de_dinero)
    end
  end

  def registrar_extraccion(una_cantidad_de_dinero)
    @saldo = @saldo - una_cantidad_de_dinero
  end

  def depositar(una_cantidad_de_dinero)
    @saldo = @saldo + una_cantidad_de_dinero
  end

  def saldo
    @saldo
  end

  def initialize
    @saldo = 0.pesos
  end
end
