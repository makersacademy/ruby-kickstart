# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	odd = ""
  	self.size.times do |i|
  		i % 2 == 0 && self.empty? == false ? odd << self[i].to_s : odd << "".to_s
  	end
  	odd
  end
  
end