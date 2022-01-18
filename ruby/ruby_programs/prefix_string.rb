=begin
Given a string s and an array of strings words, determine whether s is a prefix string of words. 
A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some 
positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise
=end

class Test
  def prefix(s, words)
    s1 = ""
    s.tr!("^[a-z1-9]", "")
    bool = false
    for i in 0...words.length
      s1 << words[i]
      if s1 == s
        bool = true
        break
      end
    end
    return true if bool == true
    false
  end
end

t1 = Test.new
puts t1.prefix("mohit singh dagar ", ["mohit", "singh", "dagar", "this", "is", "to", "do", "end", "full"])

#Output = true
