# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	counter = 0
	pirate_string = ""
	while counter < string.length - 1 do 

		if string[counter] == "r"  || string[counter] == "R"
			pirate_string += string[counter + 1]
		end	

		counter += 1
	end
	 return pirate_string 
end

 puts pirates_say_arrrrrrrrr("are you really learning Ruby?") 