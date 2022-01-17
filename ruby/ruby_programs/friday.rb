# Given the month and year as numbers, return whether that month contains a Friday 13th.
require "date"

class Test
  def friday(m, y)
    date = Date.new(y, m, 13)
    weekday = date.strftime("%A")
    bool = false
    if (weekday == "Friday")
      bool = true
    end
    return bool
  end
end

t1 = Test.new
puts t1.friday(8, 1999)

#Output = true
