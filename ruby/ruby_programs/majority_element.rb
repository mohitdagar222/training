=begin
 Given an array nums of size n, return the majority element. The majority element is the element that 
appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array. 
=end

class Test
  def majority(nums)
    for i in 0..nums.length - 1
      count = 0
      for j in 0..nums.length - 1
        if nums[i] == nums[j]
          count += 1
        end
      end
      if count > (nums.length) / 2
        return nums[i]
        break
      end
    end
  end
end

t1 = Test.new
nums = [3, 5, 6, 8, 4, 3, 3, 3, 3]
print t1.majority(nums)
puts

Output = 3
