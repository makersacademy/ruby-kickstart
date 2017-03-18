# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    evens = ""
    each_char.with_index do |letters, position|
    evens << letters if position.even?
  end
  return evens
  end
end
puts "abcdefg".every_other_char