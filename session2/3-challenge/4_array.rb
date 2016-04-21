# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares


def get_squares(numbers)                            #defines method with one parameter
answer = numbers.select{|n| numbers.include? n*n}   #Creates a new array to eaqual the return value of the block
answer.sort                                         #Sorts the new array into order and returns
end                                                 #Ends the method


=begin JOSH'S SOLUTION
def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
end
=end