#Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

class Test
  def reverse(str)
    str2 = str.split(".")
    str3 = ""
    j =
      for i in 0...str2.length
        for j in (str2[i].length - 1).downto(0)
          str3 << str2[i][j]
        end
        if i != str2.length - 1
          str3 << "."
        end
      end
    return str3
  end
end

t1 = Test.new
puts t1.reverse("my.name.is.mohit")

#Output = ym.eman.si.tihom
