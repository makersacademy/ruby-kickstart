# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


#steps
	#set-up a method which takes a nonnegative integer
	#establish a starter hash for this value
	#establish an iterator with hash that adds all the nonnegative integers up to the next number and stores as value

#SOLUTION 
def staircase(n)
  to_return = {} #set up empty hash
  1.upto n do |crnt_size| #start iterating up to provided number from 1 and set-up current size variable
    next if crnt_size.even? #skip over if number is even - this is because will need to store these as values
    all   = Array.new(crnt_size) { |i| i + 1 } #stores all the potential values in an array (e.g. 1,1,2,3,1,2,3,4,5)
    #puts all									#takes each number up to n first (1,2,3,4,5) and adds 1 each time - why does it keep iterating round?
    evens = all.select { |i| i.even? } #selects out the evens from this long list
    #puts evens
    to_return[crnt_size] = evens #adds evens as values to the crnt_size key in empty to_return hash
  end
  puts to_return
end

staircase(5)



