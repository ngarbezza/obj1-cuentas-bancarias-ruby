class Peso

  #
  # Incluimos comportamiento propio de objetos que deben saber compararse.
  # Al incluir este módulo ya tenemos implementados los mensajes =, <, >, etc.
  # Lo único que debemos hacer es dar una implementación del mensaje <=>
  #
  include Comparable

  def self.con_valor(un_valor) # mensaje de clase
    self.new un_valor
  end

  def initialize(un_valor) # mensaje de instancia
    @valor = un_valor
  end

  def valor
    @valor
  end

  # Mensaje que nos pide implementar el módulo Comparable para poder funcionar correctamente.
  def <=>(otro_peso)
    self.valor <=> otro_peso.valor
  end

  def +(otro_peso)
    (self.valor + otro_peso.valor).pesos
  end

  def -(otro_peso)
    (self.valor - otro_peso.valor).pesos
  end

end
