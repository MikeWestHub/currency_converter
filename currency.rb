class Currency
  attr_reader :symbol, :amount              # => nil
  def initialize(currency_string)
    split_currency = currency_string.chars  # => ["$", "1", "6", ".", "0", "0"], ["1", "2", ".", "0", "0"]
    @symbol = split_currency.shift          # => "$", "1"
    @amount = split_currency.join("").to_f  # => 16.0, 2.0
    known_currency                          # => nil
  end                                       # => :initialize

  def currency_code
    currency_array = { "$" => :USD, "£" => :EUR, "¥" => :YEN}
    currency_code = currency_array[@symbol]
  end                                                          # => :currency_code

  def +(other)
    check_type(other.symbol)
    new_value = @amount + other.amount
    Currency.new("#{@symbol}#{new_value}")
  end                                       # => :+

  def -(other)
    check_type(other.symbol)
    new_value = @amount - other.amount
    Currency.new("#{@symbol}#{new_value}")
  end                                       # => :-

  def *(other)
    @amount * other.to_f
  end                     # => :*

  def ==(other)
    symbol == other.symbol && amount == other.amount
  end                       # => :==

  def check_type(symbol)
    if @symbol != symbol
      raise DifferentCurrencyCodeError, "These currencies cannot be combined."
    end
  end                                                                           # => :check_type

  def known_currency
    unless [ "$", "£", "¥" ].include?(symbol)                           # => true, false
      raise UnknownCurrencyCodeError, "This currency is not accepted."  # ~> UnknownCurrencyCodeError: This currency is not accepted.
    end                                                                 # => nil
  end                                                                   # => :known_currency
end                                                                     # => :known_currency

class UnknownCurrencyCodeError < StandardError  # => StandardError
end                                             # => nil

class DifferentCurrencyCodeError <StandardError  # => StandardError
end                                              # => nil

c1 = Currency.new("$16.00")  # => #<Currency:0x007fefdc161718 @symbol="$", @amount=16.0>
c2 = Currency.new("$16.00")

c1 == c2

# ~> UnknownCurrencyCodeError
# ~> This currency is not accepted.
# ~>
# ~> /Users/mikewest/Desktop/class/currency_converter/currency.rb:43:in `known_currency'
# ~> /Users/mikewest/Desktop/class/currency_converter/currency.rb:7:in `initialize'
# ~> /Users/mikewest/Desktop/class/currency_converter/currency.rb:55:in `new'
# ~> /Users/mikewest/Desktop/class/currency_converter/currency.rb:55:in `<main>'
