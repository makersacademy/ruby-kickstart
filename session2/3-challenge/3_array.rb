# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:


class String
  def every_other_char

  	a = self.split("")

  	b = []

  	a.each_index do |c|

  		b << a.fetch(c) if c.even?

  	end

  	b.join

  end
  
end

puts "abcdefg".every_other_char  # => "aceg"
puts "".every_other_char         # => ""
puts "Four score and seven years ago...".every_other_char