=begin
Q. Given a string text, you want to use the characters of text to form as many instances of the word "balloon"
as possible. You can use each character in text at most once. Return the maximum number of instances
that can be formed.
Example: loonballxballpoon
You can create only 2 balloon from example text, so return 2
=end

class Test
  def count_balloon(str)
    arr1 = ["b", "a", "l", "l", "o", "o", "n"]
    arr2 = []
    bool = true
    while (bool == true)
      for i in 0...arr1.length
        for j in 0...str.length
          if arr1[i] == str[j]
            arr2.push(str[j])
            str.slice!(j)
            bool = true
            break
          else
            bool = false
          end
        end
        if bool == false
          break
        end
      end
    end
    len = arr1.length
    return arr2.count(arr1[len - 1])
  end
end

t1 = Test.new
pp t1.count_balloon("loonballxballpoon")

# OUTPUT : 2
