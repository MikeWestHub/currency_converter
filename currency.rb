class Currency
  attr_reader :symbol, :amount
  def initialize(currency_string)
    split_currency = currency_string.chars
    @symbol = split_currency.shift
    @amount = split_currency.join("").to_f
  end

  def currency_code
    currency_array = { "$" => :USD, "£" => :EUR, "¥" => :YEN}
    currency_code = currency_array[@symbol]
  end

  def +(other)
    new_value = @amount + other.amount
    Currency.new("#{@symbol}#{new_value}")
  end

  def -(other)
    new_value = @amount - other.amount
    Currency.new("#{@symbol}#{new_value}")
  end

  def *(other)

  end
end

class UnknownCurrencyCodeError < StandardError
end

class DifferentCurrencyCodeError <StandardError
end

c1 = Currency.new("$23.00")
c2 = Currency.new("$2.00")

c1.amount
c2.amount
sum = c1.-(c2)
p sum
