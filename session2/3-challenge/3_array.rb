# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    if self.length > 0
      strarr = self.split("")
      newarr = []
      strarr.each.with_index { |val,index| newarr << [val] if index.even?}
      newarr.join("")
    else
      return self
    end
  end

end
