# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  	def every_other_char
	  	answer = ""
	  	counter = 0

  		if self.nil? || self.empty?
			return answer
		end

	  	while counter <= self.length - 1
	  		if counter.even?
	  			answer += self[counter]
	  		end 
	 		counter += 1		
	  	end
 	answer
  end
end