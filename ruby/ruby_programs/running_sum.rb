# Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]...nums[i]).
#Return the running sum of nums.

class Test
  def sum(nums)
    arr = []
    for i in 0...nums.length
      sum = 0
      while i >= 0
        sum = sum + nums[i]
        i -= 1
      end
      arr << sum
    end
    return arr
  end
end

t1 = Test.new
print t1.sum([1, 3, 6, 4, 7, 9])
puts

#Output = [1, 4, 10, 14, 21, 30]
