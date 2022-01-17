#Given a range of years as a string, return the number of leap years there are within the range (
require "date"

class Test
  def leap(str)
    years = str.split("..").map { |d| Integer(d) }
    count = 0
    for i in years[0]..years[1]
      if Date.new(i).leap? == true
        count += 1
      end
    end
    return count
  end
end

t1 = Test.new
puts t1.leap("1999 .. 2021")

#Output = 6
