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
    assert_equal una_caja_de_ahorros.saldo, 0.pesos
  end


end
