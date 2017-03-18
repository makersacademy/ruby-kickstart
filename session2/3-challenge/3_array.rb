# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
    solution = ""
    (0..self.length).each do |x|
      if x.even?
        solution = solution + self[x].to_s
      end
    end
    return solution
  end

end
