# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase (numb)

  hary={}

  1.upto(numb) do |n|
  	ary=[]
  	if !n.even?
      1.upto(n) {|x| ary << x if x.even?}
      hary.store(n, ary)
    end
  end
  hary
end


