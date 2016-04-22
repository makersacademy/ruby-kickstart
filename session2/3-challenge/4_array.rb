# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
# sqrt on all each number, if it is integer, check if it is in the array, if it is, add to array
def get_squares(array)
    array1 = array.map{|x| Math.sqrt(x) unless Math.sqrt(x)%1!=0 || Math.sqrt(x) == 0}.compact
    array.delete_if{|x| array1.include?(x) == false}.sort
end
    


