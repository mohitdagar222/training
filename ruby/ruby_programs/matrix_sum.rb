=begin 
 Write a function which takes square matrix mat, return the sum of the matrix diagonals. 
Only include the sum of all the elements on the primary diagonal and all the elements on the secondary 
diagonal that are not part of the primary diagonal.

=end

class Test
  def matrix(mat)
    sum = 0
    for i in 0...mat.length
      for j in 0...mat.length
        if i == j || i + j == mat.length - 1
          sum = sum + mat[i][j]
        end
      end
    end
    return sum
  end
end

t1 = Test.new
mat1 = [[11, 12, 13], [15, 16, 17], [19, 20, 12]]
print t1.matrix(mat1)

#Output = 71
