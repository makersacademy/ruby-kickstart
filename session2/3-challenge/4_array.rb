# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(numbers)
  numbers_after_check = []
  numbers.each do |n|
    puts "checkin if #{n*n} is in the array #{numbers.join(',')}..."
    if numbers.include? n*n
      numbers_after_check << n
      puts "final numbers updated: #{numbers_after_check}"
    end
  end
  numbers_after_check.sort!
end

#get_squares [9,3,81]
#get_squares [25, 4, 9, 6, 50, 16, 5]
