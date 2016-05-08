# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
  # def get_squares
  # .get_squares
  # self.delete_if.with_index {|a| a self.include? (a**2)}
  # end
# def get_squares
#   self.sort.each_with_index { |a| a.get_squares} #= self.include?
# #   if true
# # puts self
# end

# def get_squares(grab)
#   answer =grab.select do |square|
#     square if array.include? (square * square)
#   end
#   answer.sort
# end
# self.char.sort.each_with_index { |a, b| if letter ==
def get_squares(numbers)
  numbers.select { |a| numbers.include? (a * a)}.sort
end

# 1. returns your array in numerical order
# 2. the array must only contain integers that also have their (higher square, [its * by itself]) in **2
