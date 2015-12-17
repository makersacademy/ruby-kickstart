# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""
=begin
class String
  def every_other_char(string)
    new_array = ""
    string.length.times {|index| new_array << string[index] if index.even?}

    new_array
  end
end
=end



class String
  def every_other_char
    new_array = ""
    each_char.with_index do |char, index|
    new_array << char if index.even?
    end

    new_array
  end
end
