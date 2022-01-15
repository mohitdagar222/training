# Write a function that takes an integer (less than 1000) and return an array of primes till that number.

class Test
  def primes(num)
    arr = []
    arr2 = []
    for i in 2..num
      arr.push(i)
    end
    for i in 0..arr.length - 1
      for j in 2...arr[i]
        if arr[i] % j == 0
          arr2.push(arr[i])
          break
        end
      end
    end
    return arr - arr2 - [1]
  end
end

t1 = Test.new
print t1.primes(99)

#Output = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
