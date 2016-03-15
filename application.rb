require_relative "currency"
require_relative "currency_converter"


c1 = Currency.new("¥120.00")
c2 = Currency.new("¥1,000.00")

currency_total = c1.to_f + c2.to_f
puts currency_total

# def symbol
#   currency_code = true
#   symbol_hash = {"$" => :USD, "£" => :EUR, "¥" => :JPY}
#   symbol_hash[currency_code]
# end
