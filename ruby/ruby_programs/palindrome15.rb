=begin
Given an integer limit being the upper limit of the range of interest, implement a function that returns the 
last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.
=end

class Test
  def palindrome(num)
    arr = []
    for i in 1..num
      reverse = 0
      num2 = i
      while (num2 > 0)
        reverse = (reverse * 10) + (num2 % 10)
        num2 = num2 / 10
      end
      if (reverse == i)
        arr.push(reverse)
      end
    end
    len = arr.length
    return arr[len - 15, len]
  end
end

t1 = Test.new
pp t1.palindrome(301)

#Output = [151, 161, 171, 181, 191, 202, 212, 222, 232, 242, 252, 262, 272, 282, 292]
