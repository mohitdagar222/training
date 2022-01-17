=begin
Given a date, return how many days date is away from 2023 (end date not included). date will be in 
mm/dd/yyyy format
=end
require "date"

class Test
  def days_away(date)
    arr = date.split("/")
    m = arr[0].to_i
    d = arr[1].to_i
    y = arr[2].to_i
    input_date = Date.new(y, m, d)
    final_date = Date.new(2023, 1, 1)
    diff = (final_date - input_date).to_i
    return "#{diff} day" if diff == 1
    "#{diff} days"
  end
end

t1 = Test.new
puts t1.days_away("12/31/2021")

#Output = 366 days
