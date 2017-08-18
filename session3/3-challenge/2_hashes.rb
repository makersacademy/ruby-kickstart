# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
a=(1..num).to_a
h={}
for i in a 
  h[i] = (1..i).select{|z| z.even?}
end 
c=h.select{|key,value| key if key.to_i.odd?}
p c
end 
staircase(5)
 


