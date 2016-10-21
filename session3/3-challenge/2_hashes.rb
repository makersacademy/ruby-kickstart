# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

#define method
def staircase(number)
  #create an empty hash
  numbers_hash = {}
  #iterate over all values from 1 up to the number we've been given
  1.upto number do |x|
    #move to the next value if it is an even number, as we only want odd numbers
    next if x.even?
    #create a new array with all the numbers in it
    all_numbers = Array.new(x) { |num| num + 1 }
    #select only the even numbers
    even_numbers = all_numbers.select { |num| num.even? }
    #put our even number array values in with the hash of the odd numbers
    numbers_hash[x] = even_numbers
  end
  #return our hash that has been iterated over
  numbers_hash
end
