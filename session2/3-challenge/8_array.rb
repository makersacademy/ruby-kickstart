# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
def got_three? a
     b = a.uniq.sort
     arr = []
     x = 0
     while x < b.count
     c = (b[x].to_s + ' ') * 2 + b[x].to_s
     arr << (a.join(" ").include? c) 
     x = x + 1
     end
     arr.include? true
end
