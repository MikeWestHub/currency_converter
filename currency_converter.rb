class CurrenyConversion

  def initialize(*money_string)
    @symbol = symbol
    @amount = amount
    @currency = currency
  end

  def dollar
      if :EUR
        euro = @amount / 0.74
      elsif :YEN
        yen = 
      else
  end

  def euro
    if :USD
      dollar = @amount * 0.74
    elsif :YEN
      yen = @amount *
    else
  end

  def yen
    if :USD
      dollar =
    elsif :EUR
      euro =
    else
  end

  def conversion_rate
    @counversion_rate = conversion_rate
    conversion_rate = {:USD => 1.00, :EUR => 0.74, :JPY => 120.0}
  end

end
