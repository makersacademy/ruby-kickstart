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
  to_return={}
  1.upto n do |x|
    next if x.even?
    all = Array.new(x) {|y| y +1}
    evens = all.select {|z| z.even?}
    to_return[x]= evens
    end
    to_return
  end



#even_numbers = Array.new(x) do |y| y+1 end.select {|z| z.even?}
#all = Array.new(x) {|y| y +1}
#evens = all.select {|z| z.even?}
#to_return[x]= evens
