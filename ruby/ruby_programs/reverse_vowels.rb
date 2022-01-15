# Given a string s, reverse only all the vowels in the string and return it.
# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases

class Test
  def vowels(str)
    str2 = ""
    for i in 0..str.length - 1
      if str[i].match?(/[aeiouAEIOU]/)
        str2 << str[i]
      end
    end
    j = str2.length - 1
    for i in 0..str.length - 1
      if str[i].match?(/[aeiouAEIOU]/)
        str[i] = str2[j]
        j -= 1
      end
    end
    return str
  end
end

t1 = Test.new
puts t1.vowels("mohituaxzcvou")

# Output = muhotauxzcvio
