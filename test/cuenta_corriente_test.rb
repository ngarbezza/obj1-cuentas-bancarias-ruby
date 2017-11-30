require 'test/unit'
require_relative '../lib/integer'
require_relative '../lib/peso'
require_relative '../lib/cuenta_corriente'

class CuentaCorrienteTest < Test::Unit::TestCase
  def setup
    @una_cuenta_corriente = CuentaCorriente.new
  end

  # test01DadaUnaCuentaCorrienteNuevaSuSaldoInicialDebeSer0pesos
  #
  # | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     Assert that: unaCuentaCorriente saldo isEqualTo: 0 pesos
  #
  def test_01_dada_una_cuenta_corriente_nueva_su_saldo_inicial_debe_ser_0_pesos
    @una_cuenta_corriente = CuentaCorriente.new

    assert_equal 0.pesos, @una_cuenta_corriente.saldo
  end

  # test02DadaUnaCuentaCorrienteNuevaSiDeposito100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     unaCuentaCorriente depositar: 100 pesos.
  #     Assert that: unaCuentaCorriente saldo isEqualTo: 100 pesos
  #
  def test_02_dada_una_cuenta_corriente_nueva_si_deposito_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    @una_cuenta_corriente.depositar 100.pesos

    assert_equal 100.pesos, @una_cuenta_corriente.saldo
  end

  # test03DadaUnaCuentaCorrienteCuyoSaldoEs200pesosSiExtraigo100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     unaCuentaCorriente depositar: 200 pesos.
  #     unaCuentaCorriente extraer: 100 pesos.
  #     Assert that: unaCuentaCorriente saldo isEqualTo: 100 pesos
  #
  def test_03_dada_una_cuenta_corriente_cuyo_saldo_es_200_pesos_si_extraigo_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    @una_cuenta_corriente.depositar 200.pesos
    @una_cuenta_corriente.extraer 100.pesos

    assert_equal 100.pesos, @una_cuenta_corriente.saldo
  end

  # test04DadaUnaCuentaCorrienteCuyoSaldoEs200pesosSiExtraigo300pesosSuSaldoNoDebeVariar
  #
  #     | unaCuentaCorriente |
  #
  #     unaCuentaCorriente := CuentaCorriente new.
  #     unaCuentaCorriente depositar: 200 pesos.
  #     unaCuentaCorriente extraer: 300 pesos.
  #     Assert that: unaCuentaCorriente saldo isEqualTo: 200 pesos
  #
  def test_04_dada_una_cuenta_corriente_cuyo_saldo_es_200_pesos_si_extraigo_300_pesos_su_saldo_no_debe_variar
    @una_cuenta_corriente.depositar 200.pesos
    @una_cuenta_corriente.extraer 300.pesos

    assert_equal 200.pesos, @una_cuenta_corriente.saldo
  end
end
