# Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters that
#appear in s have the same number of occurrences (i.e., the same frequency).

class Test
  def good(str)
    count = 1
    for i in 1..str.length - 1
      if str[0] == str[i]
        count += 1
      end
    end
    bool = true
    for i in 1..str.length - 1
      count2 = 0
      for j in 0..str.length - 1
        if str[i] == str[j]
          count2 += 1
        end
      end
      if (count2 != count)
        bool = false
        break
      end
    end
    return bool
  end
end

t1 = Test.new
puts t1.good("mohitomhti")
puts t1.good("amarsingh")

#OUtput = true false
