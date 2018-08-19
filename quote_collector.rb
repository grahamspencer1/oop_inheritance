require_relative 'multilinguist'

class QuoteCollector < Multilinguist
  def initialize
    @quotes = []
  end

  def add(string)
    @quotes << string
  end

  def all
    return @quotes
  end

  def random
    quote = @quotes.sample
    self.say_in_local_language(quote)
  end

  def translate(index)
    puts "Yogi Berra: #{@quotes[index]}"
    puts "Translation: #{self.say_in_local_language(@quotes[index])}"
  end
end

yogi_quotes = QuoteCollector.new
yogi_quotes.add("It ain't over till it's over.")
yogi_quotes.add("When you come to a fork in the road, take it.")
yogi_quotes.add("It's like déjà vu all over again.")
yogi_quotes.add("If you don't know where you are going, you'll end up someplace else.")
yogi_quotes.add("You can observe a lot by just watching.")

yogi_quotes.travel_to("France")
yogi_quotes.translate(0)

yogi_quotes.travel_to("Spain")
yogi_quotes.translate(1)

yogi_quotes.travel_to("Italy")
yogi_quotes.translate(2)

yogi_quotes.travel_to("Germany")
yogi_quotes.translate(3)

yogi_quotes.travel_to("Finland")
yogi_quotes.translate(4)
