# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
	elements.each_cons(3) { |a,b,c| return true if a==b && b ==c } #.each.cons -Iterates the given block for each array of consecutive <n> elements. If no block is given, returns an enumerator.
end
false #return true if match made, else return false!




#Examples

#(1..10).each_cons(3) { |a| p a }
# outputs below
#[1, 2, 3]
#[2, 3, 4]
#[3, 4, 5]
#[4, 5, 6]
#[5, 6, 7]
#[6, 7, 8]
#[7, 8, 9]
#[8, 9, 10]