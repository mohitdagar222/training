#Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M
#Write a function which takes roman number and return integer corresponding to that roman number.

class Test
  def roman(num)
    roman = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 }
    return roman.values_at(num)
  end
end

t1 = Test.new
puts t1.roman(:M)

#Output = 1000
