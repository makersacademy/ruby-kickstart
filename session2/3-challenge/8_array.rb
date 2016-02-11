# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
 new_arr = []
 arr.each.with_index {|x, i| new_arr.push(x.eql?(arr[i+1]) && x.eql?(arr[i+2]))}
 p new_arr.include?(true) ? true : false
end
