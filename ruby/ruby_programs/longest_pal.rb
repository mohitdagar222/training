=begin
Q. Given a string s which consists of lowercase or uppercase letters, return the length of the longest
palindrome that can be built with those letters.Letters are case sensitive, for example, "Aa" is not
considered a palindrome here.
=end

class Test
  def longest(str)
    max = 0
    for i in 0...str.length
      if (str.count(str[i])) > max && (str.count(str[i]) % 2 != 0)
        max = str.count(str[i])
      end
    end
    count = max
    for i in 0...str.length
      if str.count(str[i]) % 2 == 0
        count = count + 1
      end
    end
    return count
  end
end

t1 = Test.new
str = "Aabaaccb"
pp t1.longest(str)

# OUTPUT : 7
