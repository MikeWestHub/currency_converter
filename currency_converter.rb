class CurrenyConversion

  def initialize(*money_string)
    @symbol = symbol
    @amount = amount
    @currency = currency
  end

  def dollar
      if :EUR
      elsif :YEN
      else
  end

  def euro
    if :USD
    elsif :YEN
    else
  end

  def yen
    if :USD
    elsif :EUR
    else
  end

  def conversion_rate
    @counversion_rate = conversion_rate
    conversion_rate = {:USD => 1.00, :EUR => 0.74, :JPY => 120.0}
  end

end
