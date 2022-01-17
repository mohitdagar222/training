=begin
Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string. 
Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday", 
"Thursday", "Friday", or "Saturday".
To illustrate, the day of the week for "12/07/2016" is "Wednesday".
=end
require "date"

class Test
  def weekday(date)
    m, d, y = date.split("/").map { |i| Integer(i) }

    date = Date.new(y, m, d)
    return date.strftime("%A")
  end
end

t1 = Test.new
puts t1.weekday("12/19/1999")

# Output = Sunday
