=begin
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all 
non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include 
letters and numbers. Given a string s, return true if it is a palindrome, or false otherwise
=end

class Test
  def palindrome(str)
    str.downcase!
    str.tr!("^[a-z1-9]", "")
    str2 = ""
    for i in (str.length - 1).downto(0)
      str2 << (str[i])
    end
    if str2 == str
      return true
    else
      return false
    end
  end
end

t1 = Test.new
puts t1.palindrome("A man, a plan, a canal: Panama")

#Output = true
