#Write a function which takes an integer (positive) and return an array of factorials of each index in index
#position till given number.

class Test
  def factorial(num)
    arr = []
    for i in 0..num
      fact = 1
      while i > 1
        fact = fact * i
        i -= 1
      end
      arr.push(fact)
    end
    return arr
  end
end

t1 = Test.new
print t1.factorial(9)

#Output = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
