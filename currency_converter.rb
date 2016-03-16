require_relative "currency"
require_relative "error_classes"

class CurrencyConversion
  attr_reader :conversion_hash
  def initialize(conversion_hash)
    @conversion_hash = conversion_hash
  end

  def convert(currency_obj, currency_code)
    if [ :USD, :EUR, :JPY ].include?(currency_code)
      new_currency = currency_obj.amount/conversion_hash[currency_code]
      symbol_map = {:USD => "$", :EUR => "£", :JPY => "¥"}
      symbol = symbol_map[currency_code]
      CurrencyConversion.new("#{symbol}#{new_currency}")
    else
      raise UnknownCurrencyCodeError, "Currency conversion not available."
    end
  end
end
