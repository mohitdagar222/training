#A pangram is a sentence where every letter of the English alphabet appears at least once.
#Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or
#false otherwise.

class Test
  def pangram(str)
    for i in "a".."z"
      flag = 0
      for j in 0..str.length - 1
        if i == str[j]
          flag = 1
          break
        end
      end
      if flag == 0
        break
      end
    end
    return flag
  end
end

t1 = Test.new
print t1.pangram("the quick brown fox jumps over the lazy dog"), "  "
print t1.pangram("the quick brown fox jumps over the lazy")

#Output = 1  0
