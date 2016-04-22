# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  result = false
  new_array = []
  array.each_cons(3){|a,b,c| new_array << [a,b,c]}
  new_array.each do |x|
    break if new_array.empty?
    if x[0] == x[1] && x[1] == x[2]
      result = true
      break
    else
      result = false
    end
  end
  result
end
