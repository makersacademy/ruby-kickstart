# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(the_array)
  squared_array = the_array.select {|number| the_array.include? number ** 2}
  squared_array.sort
  #the_array.length.times do |index|
    #print "Current index is: #{index} - and array #{the_array} \n "
    #the_array.delete the_array[index] ** 2 if the_array.include?
    #the_array  #the_array[index] ** 2
#end
#print "This is final array: #{squared_array}"
end
#get_squares([25, 4, 9, 6, 50, 16, 5])