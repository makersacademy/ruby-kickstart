# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
def get_squares(nums)
    nums_squared =[]
    nums.each { |num| nums_squared << num if nums.include?(num**2)}


    #(nums & nums_squared).sort # did not work as it only takes the instances, and not all of them
    #puts "This is input: #{nums} and sqrt: #{nums_squared} "
    return nums_squared.sort
end


#get_squares([1,3,9,3,81,100])