# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    counter = 0
    answer = ""
    self.each_char do |i|
      answer << i if counter.even?
      answer << "" if counter.odd?
      counter += 1
      break if counter > self.length
    end
    return answer
  end

end
