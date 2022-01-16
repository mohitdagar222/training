# Create a function that takes time1 and time2 and return how many hours and minutes have passed
#between the two times
require "time"

class Test
  def diff(t1, t2)
    h = ((t1 - t2) / 3600).abs.to_i
    m1 = ((t1 - t2) / 60).to_i.abs
    m2 = m1 - (h * 60)
    return "#{h} : #{m2} "
  end
end

t3 = Test.new
t1 = Time.parse("05:30 am")
t2 = Time.parse("01:00 pm")
print t3.diff(t1, t2)
puts

#Output =  7 : 30
