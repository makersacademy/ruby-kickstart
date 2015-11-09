# class Array
#   def shuffle
#     arr = self
#     # Now we can just copy the old shuffle method.
#     shuf = []

#     while arr.length > 0
#       # Randomly pick one element of the array.
#       rand_index = rand(arr.length)

#       # Now go through each item in the array,
#       # putting them all into new_arr except for
#       # the randomly chosen one, which goes into
#       # shuf.
#       curr_index = 0
#       new_arr = []
#       arr.each do |item|
#         if curr_index == rand_index
#           shuf.push item
#         else
#           new_arr.push item
#         end

#         curr_index = curr_index + 1
#       end
#       # Replace the original array with the new,
#       # smaller array.

#       arr = new_arr
#     end
#     shuf
#   end
# end

# note modern ruby has already has a built in shuffle method

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    roman = ''

    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)

    roman
  end
end
  # puts [1,2,3,4,5].shuffle
  # puts 7.factorial
  # puts 73.to_roman
