# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    other_char = []
    new_string = self.split("")
    new_string.each_with_index do |item, index|
        if (index % 2 == 0) then
          other_char.push(item)
        end
    end
    if new_string.length > 0
      newer_string = other_char.join("")
      newer_string
    else
       ""
    end
  end
end
