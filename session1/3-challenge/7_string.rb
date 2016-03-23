# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	string1 =[]
	string = string.downcase
	a = (0 ... string.length).find_all { |i| string[i,1] == 'r' }
	a.each do|i|
		string1.push(string[i+1])
	end
	string1.join("")

end

