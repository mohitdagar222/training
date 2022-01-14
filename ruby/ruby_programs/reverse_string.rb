# Write a function to return reverse of a string using recursion.

class Test
  def reverse(string)
    return string if string.length <= 1
    reversed_str = reverse(string[1..-1])
    reversed_str << string[0]
    reversed_str 
  end
end
t1 = Test.new
str = t1.reverse("hello world")
puts str

# output = dlrow olleh