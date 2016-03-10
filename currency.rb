class Currency
  def initialize(string)
    split_money = string.split("")
    @symbol = split_money.shift
    @amount = split_money.join("").to_f
    symbol_map = {"$" => :USD, "£" => :EUR, "¥" => :JPY}
    @currency_code = symbol_map[@symbol]
  end

  def currency_code
    @currency_code
  end

  def amount
    @amount
  end

  def symbol
    @symbol
  end

  def to_s
    "#{@symbol}#{@amount}"
  end
end

Currency.new("$1.00")
Currency.new()
Currency.new()
