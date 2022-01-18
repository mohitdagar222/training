#Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, ...N} is missing
#and one number 'B' occurs twice in array. Find these two numbers.

class Test
  def missing(arr)
    for i in 0...arr.length
      count = 0
      for j in 0...arr.length
        if arr[i] == arr[j]
          count += 1
        end
      end
      if count == 2
        twice = "#{arr[i]} is coming twice"
      end
    end
    for i in 1...arr.length
      count = 0
      for j in 0...arr.length
        if i == arr[j]
          count += 1
        end
      end
      if count == 0
        miss = "#{i} is missing number"
      end
    end
    return twice, miss
  end
end

t1 = Test.new
puts t1.missing([1, 2, 3, 4, 4, 6, 7, 8, 9])
