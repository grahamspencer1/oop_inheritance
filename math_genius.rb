require_relative 'multilinguist'

class MathGenius < Multilinguist
  def report_total(array)
    @total = 0
    array.each { |x| @total += x }
    @msg = "The total is #{@total}."
    self.say_in_local_language(@msg)
  end
end

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465]) # => The total is 12048.
me.travel_to("Japan")
puts me.report_total([6,3,6,68,455,4,467,57,4,534]) # => 合計は1604です。
me.travel_to("Italy")
puts me.report_total([324,245,6,343647,686545]) # => Il totale è 1030767.
me.travel_to("France")
puts me.report_total([324,245,6,343647,686545]) # => Le total est 1030767.
