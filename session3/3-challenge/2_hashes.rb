# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
   hash = {}
   def evens(x)
    [*1..x].delete_if {|x| x.odd?}	
   end
   1.upto n do |v|
   	if v == 1
   		hash[v] = []	
   	elsif v.odd?
   		hash[v]=evens(v)
    end
   end
   hash
end
