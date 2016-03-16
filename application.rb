require_relative "currency"
require_relative "currency_converter"

#Create CurrencyConversion.new using conversion_hash
conversion_hash = {:USD => 1.00, :EUR => 0.74, :JPY => 120.0}

c1_usd = Currency.new("$20.00")
c2_usd = Currency.new("$20.00")
c3_usd = Currency.new("$50.00")
c4_eur = Currency.new("£50.00")
c5_jpy = Currency.new("¥140.00")
#Currency_obj examples
c1_usd == c2_usd
c1_usd + c2_usd + c3_usd
c2_usd - c1_usd
c2_usd * 3.0


convert_obj = CurrencyConversion.new(conversion_hash)
#USD to *
convert_obj.convert(c1_usd, :EUR)
convert_obj.convert(c1_usd, :JPY)
#EUR to *
convert_obj.convert(c4_eur, :USD)
convert_obj.convert(c4_eur, :JPY)
#JPY to *
convert_obj.convert(c5_jpy, :USD)
convert_obj.convert(c5_jpy, :EUR)
