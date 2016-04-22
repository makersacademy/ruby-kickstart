# fill out the method below, then run the tests with
#   $ rake 1:2


# Given two numbers, a and b, return half of whichever is smallest, as a float
#

def arithmetic2(a, b)
  
  if a <= b
    a.to_f / 2
  elsif b <= a
   	b.to_f / 2
  end
 		
 end

 puts arithmetic2(1, 2)    # => 0.5
 puts arithmetic2(19, 10)  # => 5.0
 puts arithmetic2(-6, -7)  # => -3.5
 puts arithmetic2(3, -1)   # => -0.5