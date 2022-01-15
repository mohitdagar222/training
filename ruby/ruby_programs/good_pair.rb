#Given an array of integers nums, return the number of good pairs.
#A pair (i, j) is called good if nums[i] == nums[j] and i < j

class Test
  def good(arr)
    count = 0
    for i in 0..arr.length - 2
      for j in i + 1..arr.length - 1
        if arr[i] == arr[j]
          count += 1
        end
      end
    end
    return count
  end
end

t1 = Test.new
puts t1.good([1, 2, 3, 4, 1, 5, 4, 6, 7, 6])

#Output = 3
