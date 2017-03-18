# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    everyOther =[]                          # => []
split('').each_with_index do |item, index|  # => ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e"]
      if index.even?                        # => true, false, true, false, true, false, true, false, true, false, true
    everyOther << item                      # => ["h"], ["h", "l"], ["h", "l", "o"], ["h", "l", "o", "t"], ["h", "l", "o", "t", "e"], ["h", "l", "o", "t", "e", "e"]
  end                                       # => ["h"], nil, ["h", "l"], nil, ["h", "l", "o"], nil, ["h", "l", "o", "t"], nil, ["h", "l", "o", "t", "e"], nil, ["h", "l", "o", "t", "e", "e"]
    end                                     # => ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e"]
    everyOther.join                         # => "hlotee"
  end
end

"hello there".every_other_char  # => "hlotee"
