=begin
Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that 
|nums[i] - nums[j]| == k. 
The value of |x| is defined as:    
 x if x >= 0. 
  -x if x < 0
=end

class Test
  def pair(nums, k)
    count = 0
    for i in 0...nums.length - 1
      for j in i + 1...nums.length
        if (nums[i] - nums[j]).abs == k
          count += 1
        end
      end
    end
    return count
  end
end

t1 = Test.new
puts t1.pair([1, 2, 4, 7, 8, 4, 2], 2)

#Output = 4
