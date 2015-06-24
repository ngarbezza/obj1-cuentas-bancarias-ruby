require 'test/unit'

class CuentaCorrienteTest < Test::Unit::TestCase

  # test01DadaUnaCuentaCorrienteNuevaSuSaldoInicialDebeSer0pesos
  #
  # | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     self assert: unaCuentaCorriente saldo = 0 pesos
  #
  def test_01_dada_una_cuenta_corriente_nueva_su_saldo_inicial_debe_ser_0_pesos
    una_cuenta_corriente = CuentaCorriente.new
    self.assert_equal una_cuenta_corriente.saldo, 0.pesos
  end


end
