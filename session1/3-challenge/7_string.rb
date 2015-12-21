# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

# This returns the letters "r"
# def pirates_say_arrrrrrrrr(string)
# 	array = string.chars
# 	array.select.with_index { |letter, i| letter == "r" }.join('')
# end

#This doesn't work, because return is making the code stop after condition is met (returning the first character)
# def pirates_say_arrrrrrrrr(string)
# 	array = string.chars
# 	array.each_with_index do |letter, i| 
# 		if letter == "r"
# 			return array[i+1]
# 		end
# 	end
# end

#Pushing the code into an empty string makes the code check through all the characters
def pirates_say_arrrrrrrrr(string)
	result = ""
	string.each_char.with_index do |letter, i| 
		if letter == "r"
		 	result << "#{string[i+1]}"
		end
		if letter == "R"
		 	result << "#{string[i+1]}"
		end
	end
	result
end