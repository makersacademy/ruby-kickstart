# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three?(arr)
    new_arr= []
    arr.each_cons(3) { |num1| new_arr<< num1 }
    new_arr.map {|x| x.grep(x[1]).size == 3 ? true : false}.include?(true)
end
