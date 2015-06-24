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

  # test02DadaUnaCuentaCorrienteNuevaSiDeposito100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     unaCuentaCorriente depositar: 100 pesos.
  #     self assert: unaCuentaCorriente saldo = 100 pesos
  #
  def test_02_dada_una_cuenta_corriente_nueva_si_deposito_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    una_cuenta_corriente = CuentaCorriente.new
    una_cuenta_corriente.depositar 100.pesos
    self.assert_equal una_cuenta_corriente.saldo, 0.pesos
  end

  # test03DadaUnaCuentaCorrienteCuyoSaldoEs200pesosSiExtraigo100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     unaCuentaCorriente depositar: 200 pesos.
  #     unaCuentaCorriente extraer: 100 pesos.
  #     self assert: unaCuentaCorriente saldo = 100 pesos
  #
  def test_03_dada_una_cuenta_corriente_cuyo_saldo_es_200_pesos_si_extraigo_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    una_cuenta_corriente = CuentaCorriente.new
    una_cuenta_corriente.depositar 200.pesos
    una_cuenta_corriente.extraer 100.pesos
    self.assert_equal una_cuenta_corriente.saldo, 100.pesos
  end

end
