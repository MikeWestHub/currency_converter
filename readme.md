##README

##Currency Converter

The currency converter exists to allow users to do two things. First the converter allows you to perform arithmetic on like class instances. Second, the converter allows users to convert between currencies.

The class named Currency (Currency.new) provides a collection of methods that lets users turn currency values into floating point numbers to allow mathematic operations. To use this class, simply call Currency.new() and put a denomination in the parenthesis in string from (ie: "$20.00"). The currency class only accepts dollars (:USD), euros (:EUR), and yen (:JPY).

The class CurrencyConversion aims to provide users a set of methods that transition between the Dollar, Euro, and Yen (:USD => $, :EUR => £, and :JPY => ¥). To use this class, first create an instance of a conversion object using the conversion hash, ie: CurrencyConversion.new({:USD => 1.00, :EUR => 0.74, :JPY => 120.0}). Next the convert method can be called on the conversion object by passing it two arguments consisting of a currency object (Currency.new) for what is to be converted and a currency code of the currency you would like to convert to (ie: USD).
