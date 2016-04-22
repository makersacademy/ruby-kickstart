# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_string = "" #empty string to put every character after "r"
	string.each_char.with_index do|char, i| #for each character and it's corresponding index, apply the following block:
		if char == 'r' || char  == 'R' #check to see if current character is "r" or "R"
			if string[i + 1] != nil #check to see that it is not the last character of the string
			new_string << string[i + 1] #if these conditions are met, add the following character to the string
			end
		end
	end
new_string #returns the string with all characters after "r/"R"
end