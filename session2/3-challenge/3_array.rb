# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    each_char.with_index.map {|x, y| !y.even? ? x="" : x }.join
    # x is character, y is its index value
    #if y isn't even, corresponding character is now equal to an empty string
    #otherwise x
  end

end
