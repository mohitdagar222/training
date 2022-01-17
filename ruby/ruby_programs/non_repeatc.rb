#Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -
#1

class Test
  def non_repeat(str)
    for i in 0...str.length
      count = 0
      for j in 0...str.length
        if str[i] == str[j]
          count += 1
        end
      end
      index = 0
      if count == 1
        index = i
        break
      end
    end
    return index if index != 0
    return -1
  end
end

t1 = Test.new
print t1.non_repeat("mohittihom"), " "
print t1.non_repeat("dagard")

#Output = -1 ,2
