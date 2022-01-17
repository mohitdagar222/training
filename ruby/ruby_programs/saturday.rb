#Write a function which takes year and returns how many Saturday 14ths there are in a given year

require "date"

class Test
  def saturday(year)
    count = 0
    for month in 1..12
      date = Date.new(year, month, 14)
      weekday = date.strftime("%A")
      if weekday == "Saturday"
        count += 1
      end
    end
    return count
  end
end

t1 = Test.new
puts t1.saturday(2023)

#Output = 2
