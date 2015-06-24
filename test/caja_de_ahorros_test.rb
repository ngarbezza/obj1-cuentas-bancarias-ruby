require 'test/unit'

class CajaDeAhorrosTest < Test::Unit::TestCase

  # test01DadaUnaCajaDeAhorrosNuevaSuSaldoInicialDebeSer0pesos
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     self assert: unaCajaDeAhorros saldo = 0 pesos
  #
  def test_01_dada_una_caja_de_ahorros_nueva_su_saldo_inicial_debe_ser_0_pesos
    una_caja_de_ahorros = CajaDeAhorros.new
    self.assert_equal una_caja_de_ahorros.saldo, 0.pesos
  end

  # test02DadaUnaCajaDeAhorrosNuevaSiDeposito100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     unaCajaDeAhorros depositar: 100 pesos.
  #     self assert: unaCajaDeAhorros saldo = 100 pesos
  def test_02_dada_una_caja_de_ahorros_nueva_si_deposito_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    una_caja_de_ahorros = CajaDeAhorros.new
    una_caja_de_ahorros.depositar 100.pesos
    self.assert_equal una_caja_de_ahorros.saldo, 100.pesos
  end

end
