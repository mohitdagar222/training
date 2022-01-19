=begin
Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in 
index position till given number
=end
class Test
  def Fibonacci(n)
    arr = []
    for i in 0..n
      if i < 2
        arr.push(i)
      else
        arr.push(arr[i - 1] + arr[i - 2])
      end
    end
    return arr
  end
end

t1 = Test.new
print t1.Fibonacci(19)

#Output = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181]
