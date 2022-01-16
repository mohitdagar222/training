=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add
up to target. You may assume that each input would have exactly one solution, and you may not use the
same element twice. You can return the answer in any order.
=end

class Test
  def sum(arr, num)
    for i in 0..arr.length - 2
      for j in i + 1..arr.length - 1
        if arr[i] + arr[j] == num
          print i, " ", j
          puts
        end
      end
    end
  end
end

t1 = Test.new.sum([1, 3, 4, 5, 7, 8], 10)

#Output = 1 4
