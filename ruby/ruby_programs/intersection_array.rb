# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result
#must be unique and you may return the result in any order.

class Test
  def inter(nums1, nums2)
    arr = []
    for i in 0..nums1.length - 1
      for j in 0..nums2.length - 1
        if nums1[i] == nums2[j]
          arr.push(nums1[i])
        end
      end
    end
    return arr.uniq
  end
end

t1 = Test.new
print t1.inter([1, 3, 3, 5, 5, 7, 9], [1, 5, 9, 7, 4, 2])
puts

#Output = [1, 5, 7, 9]
