#Create a function that takes the month and year (as integers) and returns the number of days in that
#month.
require "date"

class Test
  def days(year, month)
    return Date.new(year, month, -1).day
  end
end

t1 = Test.new
puts t1.days(1999, 8)

#Output = 31
