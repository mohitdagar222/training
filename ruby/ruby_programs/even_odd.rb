# Given an integer array nums, move all the even integers at the beginning of the array followed by all the
#odd integers. Return any array that satisfies this condition.

class Test
  def filter(arr)
    arr2 = []
    arr3 = []
    for i in 0...arr.length
      if arr[i] % 2 == 0
        arr2.push(arr[i])
      else
        arr3.push(arr[i])
      end
    end
    return arr2 + arr3
  end
end

t1 = Test.new
print t1.filter([1, 2, 3, 4, 5, 6, 7, 8, 11, 13, 15, 22, 24, 26])
puts

#Output = [2, 4, 6, 8, 22, 24, 26, 1, 3, 5, 7, 11, 13, 15]
