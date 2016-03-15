class Currency
  def initialize(currency_string)
    split_currency = currency_string.chars  # => ["$", "1", "3", ".", "0", "0"], ["$", "1", "0", ".", "0", "0"], ["$", "1", "2", "0", ".", "0", "0"]
    @symbol = split_currency.shift          # => "$", "$", "$"
    @amount = split_currency.join.to_f      # => 13.0, 10.0, 120.0
  end                                       # => :initialize

  def +(amount)
    @amount = amount  # => #<Currency:0x007f9730993418 @symbol="$", @amount=120.0>
  end                 # => :+

  def to_s
    "#{@symbol}#{@amount}"  # => "$120.0"
  end                       # => :to_s
end                         # => :to_s

c1 = Currency.new("$13.00")   # => #<Currency:0x007f9730998300 @symbol="$", @amount=13.0>
c2 = Currency.new("$10.00")   # => #<Currency:0x007f973099bd48 @symbol="$", @amount=10.0>
c2 = Currency.new("$120.00")  # => #<Currency:0x007f9730993418 @symbol="$", @amount=120.0>

puts c1 + c2  # => nil

# >> $120.0
