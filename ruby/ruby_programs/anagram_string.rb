#Given two strings s and t, return true if t is an anagram of s, and false otherwise

class Test
  def anagram(s, t)
    a = s.chars.sort(&:casecmp).join
    b = t.chars.sort(&:casecmp).join
    if a == b
      return true
    else
      return false
    end
  end
end

t1 = Test.new
puts t1.anagram("mohit", "tihmo")

# Output = true
