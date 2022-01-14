# Create a function that takes an array and returns a new array containing only prime numbers.

class Test
    def prime(arr)
      arr2 = []
      arr = arr
      for i in 0 .. arr.length-1 do
        for k in 2 ... arr[i]
            if arr[i] % k == 0
                arr2.push(arr[i]) 
                break
            end
        end
      end
      return arr - arr2 -[1]
    end
  end

  t1 = Test.new
    arr = [2,6,9,1,15,23,39,51,59,79,10,19, 29, 31, 37]
    print t1.prime(arr)
    puts

# Output = [2, 23, 59, 79, 19, 29, 31, 37]