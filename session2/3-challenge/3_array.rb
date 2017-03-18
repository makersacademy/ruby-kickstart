# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
def every_other_char
      if self != ""
      arr = self.split(//)
      new_arr = []
      arr.each_slice(2) do |one,two|
      new_arr.push(one)
      end
    else
    return ''
    end
  new_arr.join('')
  end
end
  
