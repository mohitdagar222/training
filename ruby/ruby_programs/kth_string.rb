=begin
You are given an array of strings nums and an 
integer k. Each string in nums represents an integer without leading zeros. 
Return the string that represents the kth largest integer in nums. 
Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first 
largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.
=end
class Test
  def largest(nums, k)
    n = 0
    num = []
    for i in 0...nums.length
      n = nums[i].to_i
      num.push(n)
    end
    num.sort!
    num.reverse!
    return num[k - 1].to_s
  end
end

t1 = Test.new
pp t1.largest(["2", "12", "10", "9", "36", "36", "99"], 6)

#Output = "9"
