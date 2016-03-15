class Currency
  def initialize(currency_string)
    split_currency = currency_string.chars  # => ["$", "1", "3", ".", "0", "0"], ["$", "1", "0", ".", "0", "0"], ["$", "1", "2", "0", ".", "0", "0"]
    @symbol = split_currency.shift          # => "$", "$", "$"
    @amount = split_currency.join           # => "13.00", "10.00", "120.00"
  end                                       # => :initialize

  def to_f
    @amount.to_f  # => 13.0, 10.0, 120.0
  end             # => :to_f

  def to_s
    "#{@symbol}#{@amount}"
  end                       # => :to_s
end                         # => :to_s

c1 = Currency.new("$13.00")   # => #<Currency:0x007f9fd60240e0 @symbol="$", @amount="13.00">
c2 = Currency.new("$10.00")   # => #<Currency:0x007f9fd601fc48 @symbol="$", @amount="10.00">
c3 = Currency.new("$120.00")  # => #<Currency:0x007f9fd601f018 @symbol="$", @amount="120.00">

currency_instance_total= c1.to_f + c2.to_f + c3.to_f  # => nil
puts currency_instance_total.to_s
puts [c1, c2, c3]

# >> 143.0
