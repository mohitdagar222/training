=begin
If today was Monday, in two days, it would be Wednesday. 
Create a function that takes in an array of days as input and the number of days to increment by. Return an 
array of days after n number of days has passed. 
after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"] 
=end

class Test
  def increment(days, k)
    arr3 = []
    arr2 = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
    for i in 0...days.length
      for j in 0...arr2.length
        if days[i] == arr2[j]
          a = j + k
          if a <= 6
            arr3.push(arr2[a])
          elsif a >= 7
            g = a - 7
            arr3.push(arr2[g])
          end
        end
      end
    end
    return arr3
  end
end

t1 = Test.new
print t1.increment(["wednesday", "friday"], 9)
puts

#Output = ["friday", "sunday"]
