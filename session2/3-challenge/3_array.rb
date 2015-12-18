# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    result = []
    ary = self.each_char.to_a

    if ary.length == 0
      return ""
    end

    ary.each_index do |i|
      if i % 2 == 0
        result << ary[i]
      end
    end
  result = result.join
  return result
  end
end
