i=1
n=6
for i in 1 .. n do
    j=1
    for j in 1 .. i do
        print '*'
        j +=1
    end
    i += 1
    print "\n"
end

=begin
*
**
***
****
*****
******

=end