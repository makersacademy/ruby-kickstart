# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	chars = string.split(//)
	returnString = ''
	chars.each_with_index do |c,i|
		returnString << chars[i+1].to_s if c == 'r' || c == 'R'
	end
	returnString
end