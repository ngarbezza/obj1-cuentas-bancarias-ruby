require 'test/unit'
require_relative '../lib/caja_de_ahorros'

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
  #
  def test_02_dada_una_caja_de_ahorros_nueva_si_deposito_100_pesos_su_nuevo_saldo_debe_ser_100_pesos
    una_caja_de_ahorros = CajaDeAhorros.new
    una_caja_de_ahorros.depositar 100.pesos
    self.assert_equal una_caja_de_ahorros.saldo, 100.pesos
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
    una_caja_de_ahorros = CajaDeAhorros.new
    una_caja_de_ahorros.depositar 200.pesos
    una_caja_de_ahorros.extraer 100.pesos
    self.assert_equal una_caja_de_ahorros.saldo, 100.pesos
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
    una_caja_de_ahorros = CajaDeAhorros.new
    una_caja_de_ahorros.depositar 200.pesos
    una_caja_de_ahorros.extraer 300.pesos
    self.assert_equal una_caja_de_ahorros.saldo, 200.pesos
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
    una_caja_de_ahorros = CajaDeAhorros.new
    una_caja_de_ahorros.depositar 200.pesos
    una_caja_de_ahorros.extraer 10.pesos
    una_caja_de_ahorros.extraer 10.pesos
    una_caja_de_ahorros.extraer 10.pesos
    una_caja_de_ahorros.extraer 10.pesos
    una_caja_de_ahorros.extraer 10.pesos

    cantidad_de_extracciones_mensuales_inicial = una_caja_de_ahorros.cantidad_de_extracciones_mensuales
    saldo_inicial = una_caja_de_ahorros.saldo
    una_caja_de_ahorros.extraer 10.pesos

    self.assert_equal una_caja_de_ahorros.saldo, saldo_inicial
    self.assert_equal una_caja_de_ahorros.cantidad_de_extracciones_mensuales, cantidad_de_extracciones_mensuales_inicial
  end

end
