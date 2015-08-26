# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    i, array, switch = 0, [], true
    while i < self.length
      if switch; array.push self[i] end
      switch = !switch
      i = i + 1
    end
    array.join
  end
end
