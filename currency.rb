class Currency
  def initialize(currency_string)
    split_currency = currency_string.split("")  # => ["$", "1", ".", "0", "0"], ["£", "0", ".", "7", "4"], ["¥", "1", "2", "0", ".", "0"]
    @symbol = split_currency.shift              # => "$", "£", "¥"
    @amount = split_currency.join("").to_f      # => 1.0, 0.74, 120.0
  end                                           # => :initialize

  def symbol
    symbol_hash = {"$" => :USD, "£" => :EUR, "¥" => :JPY}
    @currency_code = symbol_hash[@symbol]
  end                                                      # => :symbol

  def currency_code
    @currency_code
  end                # => :currency_code

  def amount
    @amount
  end         # => :amount

  def to_s
    "#{@symbol}#{@amount}"
  end                       # => :to_s
end                         # => :to_s

dollar = Currency.new("$1.00")  # => #<Currency:0x007fec4a1e22b8 @symbol="$", @amount=1.0>
pound = Currency.new("£0.74")   # => #<Currency:0x007fec4a1e0cb0 @symbol="£", @amount=0.74>
yen = Currency.new("¥120.0")    # => #<Currency:0x007fec4a1e3960 @symbol="¥", @amount=120.0>



# >>
