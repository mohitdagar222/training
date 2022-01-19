#Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
#both arrays whose sum is equal to X.

class Test
  def pairs(arr1, arr2, x)
    for i in 0...arr1.length
      for j in 0...arr2.length
        if arr1[i] + arr2[j] == x
          puts "#{arr1[i]} #{arr2[j]}"
        end
      end
    end
  end
end

t1 = Test.new
t1.pairs([-1, -2, 4, -6, 5, 7], [6, 3, 4, 0], 8)

#Output =
# 4 4
# 5 3
