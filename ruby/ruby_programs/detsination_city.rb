=begin
 You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from 
cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city. 
It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one 
destination city. 
 
Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]] 
Output: "Sao Paulo"  
Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip 
consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo
=end

class Test
  def check(arr)
    for i in 0...arr.length
      count = 0
      for j in 0...arr.length
        if arr[i][1] == arr[j][0]
          count += 1
        end
      end
      if count == 0
        city = arr[i][1]
        break
      end
    end
    return city
  end
end

t1 = Test.new
puts t1.check([["B", "C"], ["D", "B"], ["C", "A"]])

# Output = A
