# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    #create the new string where the even indexed letters will be
    new_string =""
    #each_char passes each character in str to the given block, or returns an enumerator if no block is given.
    each_char.with_index do |char, index|
      #adds the character where the index is even to the new_string
      new_string << char if index.even?
    end
    #returns new_string
    new_string

  end

end
