# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

<<<<<<< HEAD



#input is an array
#  "got_three?(array)"
#returns either true or false
#  "return true if"... "return false if"
#if an element in the array shows up more than three times then we return true
#  how to go about this?
#  not sure how to ask for "three consecutive elements in a row within array"? Ohh! "each_cons [number of consecutive elements]" and then the related "do" condition





def got_three?(array)
  array_of_array = []
  
  array.each_cons 3 do |a, b, c|
    if a == b && b == c
      array_of_array << "true"
    else array_of_array << "false"
    end
  end
  if array_of_array.include?("true")
    #turn output of got_three(array) contains 'true', then puts true
  puts true
  else puts false
  end
end


got_three?([1, 2, 2, 2, 3, 3, 3])
got_three?(['a', 'a', 'b'])
got_three?(['a', 'a', 'a'])
got_three?([1, 2, 1, 1])

=======
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
