# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	afterR = String.new

	for i in 0...string.length
		if string.slice(i).downcase == 'r'
			afterR = afterR + string.slice(i+1).to_s
		end
	end

	return afterR
end
