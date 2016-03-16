require_relative "currency"
require_relative "currency_converter"


c1 = Currency.new("$20.00")
c2 = Currency.new("$20.00")


c1 == c2
c1 + c2
c2 - c1
c2 * 3.0

conversion = CurrenyConversion({c1, :USD => 1.00})

# !> /Users/mikewest/Desktop/class/currency_converter/application.rb:14: syntax error, unexpected ',', expecting =>
# !> conversion = CurrenyConversion({c1, :USD => 1.00})
# !>                                    ^
# !> /Users/mikewest/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0.beta.6/lib/seeing_is_believing/event_stream/producer.rb:97:in `record_exception': undefined method `size' for nil:NilClass (NoMethodError)
# !> \tfrom /Users/mikewest/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/seeing_is_believing-3.0.0.beta.6/lib/seeing_is_believing/the_matrix.rb:40:in `block in <top (required)>'
