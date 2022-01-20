=begin Given two strings s and part, perform the following operation on s until all occurrences of the substring 
part are removed:    
  Find the leftmost occurrence of the substring part and remove it from s.Return s after removing all   
occurrences of part. 
=end

class Test
  def remove(str, part)
    len = part.length
    for i in 0...str.length
      bool = false
      for j in 0...str.length
        if str.slice(j...j + len) == part
          str.slice!(j...j + len)
          bool = true
          break
        end
      end
      if bool == false
        break
      end
    end
    if str != part
      return str
    else
      return ""
    end
  end
end

t1 = Test.new
str = "aabababa"
part = "aba"
pp t1.remove(str, part)

#Output = "ba"
