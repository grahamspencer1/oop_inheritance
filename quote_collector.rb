require_relative 'multilinguist'

class QuoteCollector < Multilinguist
  def initialize
    @quote = []
  end

  def add(str)
    @quote << str
  end

  def all
    return @quote
  end

  def random
    quote = @quote.sample
    self.say_in_local_language(quote)
  end

  def translate(index)
    puts "Clint Eastwood: #{@quote[index]}"
    puts "Clint Eastwood: #{self.say_in_local_language(@quote[index])}"
    puts "The Dude: #{@quote[index]}"
    puts "The Dude: #{self.say_in_local_language(@quote[index])}"
    puts "Clint Eastwood: #{@quote[index]}"
    puts "Clint Eastwood: #{self.say_in_local_language(@quote[index])}"
  end
end

clint_quote = QuoteCollector.new
dude_quote = QuoteCollector.new

clint_quote.add("Go ahead, make my day.")
dude_quote.add("I'm The Dude, dude.")

p clint_quote.all
puts ""
p dude_quote.all
puts ""

puts "Show randomly translated quote from list:"
clint_quote.travel_to("France")
p clint_quote.random
puts ""

clint_quote.travel_to("Germany")
clint_quote.translate(0)
puts ""

clint_quote.travel_to("Japan")
clint_quote.translate(3)
puts ""
