=begin
Given the parameters day, month and year, return whether that date is a valid date. 
is_valid_date(35, 2, 2020) ➞ false 
# February doesn't have 35 days
=end

require "date"

class Test
  def valid(d, m, y)
    Date.valid_date?(y, m, d)
  end
end

t1 = Test.new
puts t1.valid(19, 15, 1999)

#Output = false
