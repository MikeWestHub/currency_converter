class Currency
  def initialize(currency_string)
    split_currency = currency_string.split("")           
    @symbol = split_currency.shift
    @amount = split_currency.join("").to_f
  end

  def symbol
    symbol_hash = {"$" => :USD, "£" => :EUR, "¥" => :JPY}
    @currency_code = symbol_map[@symbol]
  end

  def currency_code
    @currency_code
  end

  def amount
    @amount
  end

  def to_s
    "#{@symbol}#{@amount}"
  end
end

Currency.new("$1.00")
Currency.new("£0.74")
Currency.new("¥120.0")
