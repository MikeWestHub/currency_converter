require_relative "currency"  # => true
require_relative "error_classes"

class CurrenyConversion
  attr_reader :conversion_hash          # => nil
  def initialize(conversion_hash)
    @conversion_hash = conversion_hash  # => {:USD=>1.0, :EUR=>0.74, :JPY=>120.0}, "£20.27027027027027"
  end                                   # => :initialize

  def convert(currency_obj, currency_code)
      new_currency = currency_obj.amount/conversion_hash[currency_code]  # => 20.27027027027027
      symbol_map = {:USD => "$", :EUR => "£", :JPY => "¥"}               # => {:USD=>"$", :EUR=>"£", :JPY=>"¥"}
      symbol = symbol_map[currency_code]                                 # => "£"
      CurrenyConversion.new("#{symbol}#{new_currency}")                  # => #<CurrenyConversion:0x007f852a0093b0 @conversion_hash="£20.27027027027027">
  end                                                                    # => :convert
end                                                                      # => :convert

c1 = Currency.new("$15.00")  # => #<Currency:0x007f852a010a98 @symbol="$", @amount=15.0>


  # => {:USD=>1.0, :EUR=>0.74, :JPY=>120.0}

convert_hash = CurrenyConversion.new(hash)  # => #<CurrenyConversion:0x007f852a00a1c0 @conversion_hash={:USD=>1.0, :EUR=>0.74, :JPY=>120.0}>

new_amt = convert_hash.convert(c1, :EUR)  # => #<CurrenyConversion:0x007f852a0093b0 @conversion_hash="£20.27027027027027">
