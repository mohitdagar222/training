#Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a
#given target value.
#If target is not found in the array, return [-1, -1

class Test
  def check(nums, target)
    start = -1
    endn = -1
    for i in 0...nums.length
      if nums[i] == target
        start = i
        break
      end
    end
    for i in (nums.length - 1).downto(0)
      if nums[i] == target
        endn = i
        break
      end
    end
    return start, endn
  end
end

t1 = Test.new
pp t1.check([1, 4, 9, 2, 3, 4, 5], 10)
pp t1.check([1, 4, 9, 2, 3, 4, 5], 4)
