=begin
Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest 
product, and return the product. Elements can also be negative numbers. 
Input: nums = [2,3,-2,4] 
Output: 6 
Explanation: [2,3] has the largest product 6.
=end

class Program
  def largest(arr)
    prod = 1
    prod2 = arr[0]
    prod3 = arr[0]
    for i in 0...arr.length
      prod = prod * arr[i]
      if prod == 0
        prod = arr[i]
      end
      if (arr[i] < 0 && i != arr.length - 1) && arr[i + 1] > 0
        prod3 = 1
        j = i + 1
        while j < arr.length && arr[j] > 0
          prod3 = prod3 * arr[j]
          j = j + 1
        end
      end
      if prod2 < prod
        prod2 = prod
      end
      if prod2 < prod3
        prod2 = prod3
      end
    end
    return prod2
  end
end

object = Program.new
arr = [3, 5, 6, 3, -3, 10, -6, 0, 3, 0]
arr2 = [6, -3, -10, 0, 2]
arr3 = [2, 2, -3, 2, 3, 6, 9, -3, -6]
arr4 = [-2, 0, -9]
pp object.largest(arr)
pp object.largest(arr2)
pp object.largest(arr3)
pp object.largest(arr4)
