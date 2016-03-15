class Currency
  def initialize(currency_string)
    split_currency = currency_string.chars
    @symbol = split_currency.shift
    @amount = split_currency.join
  end

  def to_f
    @amount.to_f
  end

  def to_s
    amount_f = @amount.to_f
    "#{@symbol}#{amount_f}"
  end
end

#examples below for class creation and format for addition

c1 = Currency.new("$13.00")
c2 = Currency.new("$10.00")
c3 = Currency.new("$120.00")

currency_instance_total= c1.to_f + c2.to_f + c3.to_f
puts currency_instance_total.to_s
puts [c1, c2, c3]
