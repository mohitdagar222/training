#Given an n-digit large number in form of string, check whether it is divisible by 7 or not. Print 1 if divisible
#by 7, otherwise 0.

class Test
  def divisible(str)
    if str.to_i % 7 == 0
      return 1
    else
      return 0
    end
  end
end

t1 = Test.new
print t1.divisible(" 8955795758"), " "
puts t1.divisible(" 65842666454325662")

#Output = 1 0
