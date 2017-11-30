class CuentaBancaria
  def initialize
    @saldo = 0.pesos
  end

  def puedo_extraer?(un_monto)
    un_monto <= @saldo
  end

  def extraer(un_monto)
    if puedo_extraer?(un_monto)
      registrar_extraccion(un_monto)
    end
  end

  def registrar_extraccion(un_monto)
    @saldo -= un_monto
  end

  def depositar(un_monto)
    @saldo += un_monto
  end

  attr_reader :saldo
end
