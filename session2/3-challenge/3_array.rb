# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_str = ''
    array = self.split('')
    array.each.with_index do |c, i|
      new_str += array[i] if i.even?
    end
    new_str
  end
end
