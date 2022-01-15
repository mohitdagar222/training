# Write a function which takes an array of integers, return how many of them contain an even number of
# digits.

class Test
  def even(arr)
    count = 0
    for i in 0..arr.length - 1
      if arr[i] % 2 == 0
        count += 1
      end
    end
    return count
  end
end

t1 = Test.new
puts t1.even([2, 1, 3, 4, 5, 6, 7, 8, 9, 24, 67, 88, 97])

#Output -6
