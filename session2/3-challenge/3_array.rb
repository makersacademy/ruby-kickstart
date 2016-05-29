# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    array = []
    if self == ''
      return ''
    else
      self.chars.each_with_index do |el, index| 
        if index.even? then 
          array << el
        end
      end
   end
    array.join('')
  end
end
