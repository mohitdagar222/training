=begin
Given a string s and an array of strings words, determine whether s is a prefix string of words. 
A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some 
positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise
=end

class Test
  def prefix(s, words, k)
    s1 = ""
    s.tr!("^[a-z1-9]", "")
    if k <= words.length
      for i in 0...k
        s1 << words[i]
      end
    end
    return true if s == s1
    false
  end
end

t1 = Test.new
puts t1.prefix("mohit singh dagar ", ["mohit", "singh", "dagar", "this", "is", "to", "do", "end", "full"], 3)

#Output = true
