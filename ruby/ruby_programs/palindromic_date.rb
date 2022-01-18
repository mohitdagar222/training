=begin
 The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format 
(02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date 
formats, otherwise return false
=end

require "date"

class Test
  def palindrome(date)
    d1 = Date.parse(date)
    d2 = Date.strptime(date, "%m/%d/%Y")
    return true if d1 == d2
    false
  end
end

t1 = Test.new
print t1.palindrome("01/12/2020"), " "
print t1.palindrome("02/02/1999")

#Output = false true
