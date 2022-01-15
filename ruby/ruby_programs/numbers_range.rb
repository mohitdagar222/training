#Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range
#that is missing from the array

class Test
  def numbers(nums)
    max = nums[0]
    arr = []
    for i in 0...nums.length
      if max < nums[i]
        max = nums[i]
      end
    end
    for i in 0..max
      flag = 0
      for j in 0...nums.length
        if i == nums[j]
          flag = 1
          break
        end
      end
      if flag == 0
        arr.push(i)
      end
    end
    return arr
  end
end

t1 = Test.new
print t1.numbers([4, 2, 3, 6, 8])

#Output = [0, 1, 5, 7]
