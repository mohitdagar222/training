=begin Create a function that takes an array of strings and integers, and filters out the array so that it returns an 
array of integers only. 
=end

class Test
  def filter(arr)
    arr2 = []
    arr = arr
    for i in 0 .. arr.length-1 do
      if arr[i].is_a?Integer
        arr2.push(arr[i])
      end
    end
    return arr2
  end
  t1 = Test.new
  arr = [1, "mohit", 11, 9, 6, 4,"krishan", "ajay"]
  print t1.filter(arr)
  puts
end

# output = [1, 11, 9, 6, 4]