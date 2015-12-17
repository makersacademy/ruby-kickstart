# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    array = self.split(//)
    new_array = []
    for i in 0...array.length
      if i % 2 == 0
        new_array << array[i]
      end
    end
    new_array.join
  end

end
