class Currency
  def initialize(currency_string)
    split_currency = currency_string.chars  # => ["$", "1", "3", ".", "0", "0"], ["$", "1", "0", ".", "0", "0"], ["$", "1", "2", "0", ".", "0", "0"]
    @symbol = split_currency.shift          # => "$", "$", "$"
    @amount = split_currency.join("").to_f  # => 13.0, 10.0, 120.0
  end                                       # => :initialize

  def symbol
    symbol_hash = {"$" => :USD, "£" => :EUR, "¥" => :JPY}
    @symbol_hash = symbol_hash
  end                                                      # => :symbol

  def to_s
    "#{@symbol}#{@amount}"
  end                       # => :to_s
end                         # => :to_s

c1 = Currency.new("$13.00")   # => #<Currency:0x007ff87b897f08 @symbol="$", @amount=13.0>
c2 = Currency.new("$10.00")   # => #<Currency:0x007ff87b897198 @symbol="$", @amount=10.0>
c2 = Currency.new("$120.00")  # => #<Currency:0x007ff87b896658 @symbol="$", @amount=120.0>

puts c1 + c2 + c3  # ~> NoMethodError: undefined method `+' for #<Currency:0x007ff87b897f08 @symbol="$", @amount=13.0>

# ~> NoMethodError
# ~> undefined method `+' for #<Currency:0x007ff87b897f08 @symbol="$", @amount=13.0>
# ~>
# ~> /Users/mikewest/Desktop/class/currency_converter/currency.rb:22:in `<main>'
