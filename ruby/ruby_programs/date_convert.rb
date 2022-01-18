=begin
 Create a function that converts dates from one of five string formats: 
 
    "January 9, 2019" (MM D, YYYY) 
    "Jan 9, 2019" (MM D, YYYY) 
    "01/09/2019" (MM/DD/YYYY) 
    "01-09-2019" (MM-DD-YYYY) 
    "01.09.2019" (MM.DD.YYYY)
=end
require "date"

class Test
  def convert(date)
    case
    when date.include?(",")
      d = Date.parse(date)
    when date.include?("/")
      d = Date.strptime(date, "%m/%d/%Y")
    when date.include?("-")
      d = Date.strptime(date, "%m-%d-%Y")
    else
      d = Date.strptime(date, "%m.%d.%Y")
    end
    return [d.strftime("%m"), d.strftime("%d"), d.strftime("%Y")].map { |i| Integer(i) }
    return d
  end
end

print t1 = Test.new.convert("12.19.1999")
puts

# Output = [12, 19, 1999]
