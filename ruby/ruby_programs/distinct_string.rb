=begin
 A distinct string is a string that is present only once in an array. Given an array of strings arr, and an integer 
k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty 
string "". 
=end
class Test
  def distinct(arr, k)
    arr2 = []
    for i in 0..arr.length - 1
      count = 0
      for j in 0..arr.length - 1
        if arr[i] == arr[j]
          count += 1
        end
      end
      if count == 1
        arr2.push(arr[i])
      end
    end
    return arr2[k - 1] if arr2.length >= k
    "no string available"
  end
end

t1 = Test.new
puts t1.distinct(["mohit", "akash", "jahul", "mohit", "vijay"], 2)

#Output = jahul
