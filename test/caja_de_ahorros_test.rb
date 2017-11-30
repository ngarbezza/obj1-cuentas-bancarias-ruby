require 'test/unit'
require_relative '../lib/integer'
require_relative '../lib/peso'
require_relative '../lib/caja_de_ahorros'

class CajaDeAhorrosTest < Test::Unit::TestCase

  def setup
    @una_caja_de_ahorros_nueva = CajaDeAhorros.new
  end

  # test01DadaUnaCajaDeAhorrosNuevaSuSaldoInicialDebeSer0pesos
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     Assert that: unaCajaDeAhorros saldo isEqualTo: 0 * peso
  #
  def test_01_dada_una_caja_de_ahorros_nueva_su_saldo_inicial_debe_ser_0_pesos
    assert_equal 0.pesos, @una_caja_de_ahorros_nueva.saldo
  end

  # test02DadaUnaCajaDeAhorrosNuevaSiDeposito100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     unaCajaDeAhorros depositar: 100 pesos.
  #     self assert: unaCajaDeAhorros saldo = 100 pesos
  #
  def test_02_dada_una_caja_de_ahorros_nueva_si_deposito_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    @una_caja_de_ahorros_nueva.depositar 100.pesos

    assert_equal 100.pesos, @una_caja_de_ahorros_nueva.saldo
  end

  # test03DadaUnaCajaDeAhorrosCuyoSaldoEs200pesosSiExtraigo100pesosSuNuevoSaldoDebeSer100pesos
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     unaCajaDeAhorros depositar: 200 pesos.
  #     unaCajaDeAhorros extraer: 100 pesos.
  #     self assert: unaCajaDeAhorros saldo = 100 pesos
  #
  def test_03_dada_una_caja_de_ahorros_cuyo_saldo_es_200_pesos_si_extraigo_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    @una_caja_de_ahorros_nueva.depositar 200.pesos

    @una_caja_de_ahorros_nueva.extraer 100.pesos

    assert_equal 100.pesos, @una_caja_de_ahorros_nueva.saldo
  end

  # test04DadaUnaCajaDeAhorrosCuyoSaldoEs200pesosSiExtraigo300pesosSuSaldoNoDebeVariar
  #
  #     | unaCajaDeAhorros |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     unaCajaDeAhorros depositar: 200 pesos.
  #     unaCajaDeAhorros extraer: 300 pesos.
  #     self assert: unaCajaDeAhorros saldo = 200 pesos
  #
  def test_04_dada_una_caja_de_ahorros_cuyo_saldo_es_200_pesos_si_extraigo_300_pesos_su_saldo_no_debe_variar
    @una_caja_de_ahorros_nueva.depositar 200.pesos
    @una_caja_de_ahorros_nueva.extraer 300.pesos
    assert_equal 200.pesos, @una_caja_de_ahorros_nueva.saldo
  end

  # test05DadaUnaCajaDeAhorrosConCantidadDeExtraccionesMensualesIgualA5SiHagoUnaExtraccionSuSaldoYSusExtraccionesMensualesNoDebenVariar
  #
  #     | unaCajaDeAhorros cantidadDeExtraccionesMensualesInicial saldoInicial |
  #
  #     unaCajaDeAhorros := CajaDeAhorros new.
  #     unaCajaDeAhorros depositar: 200 pesos.
  #     unaCajaDeAhorros extraer: 10 pesos;
  #                      extraer: 10 pesos;
  #                      extraer: 10 pesos;
  #                      extraer: 10 pesos;
  #                      extraer: 10 pesos.
  #     cantidadDeExtraccionesMensualesInicial := unaCajaDeAhorros cantidadDeExtraccionesMensuales.
  #     saldoInicial := unaCajaDeAhorros saldo.
  #     unaCajaDeAhorros extraer: 10 pesos.
  #     self assert: unaCajaDeAhorros saldo = saldoInicial.
  #     self assert: unaCajaDeAhorros cantidadDeExtraccionesMensuales = cantidadDeExtraccionesMensualesInicial
  #
  def test_05_dada_una_caja_de_ahorros_con_cantidad_de_extracciones_mensuales_igual_a_5_si_hago_una_extraccion_su_saldo_y_sus_extracciones_mensuales_no_deben_variar
    @una_caja_de_ahorros_nueva.depositar 200.pesos
    5.times { @una_caja_de_ahorros_nueva.extraer 10.pesos }

    cantidad_de_extracciones_mensuales_inicial = @una_caja_de_ahorros_nueva.cantidad_de_extracciones_mensuales
    saldo_inicial = @una_caja_de_ahorros_nueva.saldo

    @una_caja_de_ahorros_nueva.extraer 10.pesos

    assert_equal saldo_inicial, @una_caja_de_ahorros_nueva.saldo
    assert_equal cantidad_de_extracciones_mensuales_inicial, @una_caja_de_ahorros_nueva.cantidad_de_extracciones_mensuales
  end

  def test_06_dada_una_caja_de_ahorros_nueva_su_cantidad_de_extracciones_mensuales_es_0
    assert_equal 0, @una_caja_de_ahorros_nueva.cantidad_de_extracciones_mensuales
  end

  def test_07_dada_una_caja_de_ahorros_con_200_pesos_cuando_realizo_una_extraccion_aumenta_su_cantidad_de_extracciones_mensuales_en_1
    @una_caja_de_ahorros_nueva.depositar 20.pesos
    @una_caja_de_ahorros_nueva.extraer 10.pesos

    assert_equal 1, @una_caja_de_ahorros_nueva.cantidad_de_extracciones_mensuales
  end
end
