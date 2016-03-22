# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	afterRs = []
	array = string.chars
	
	hash = Hash[array.each_with_index.map { |value, key| [key, value] }]

	hash.each_pair {|key, value| 
		if value == "r" || value == "R" 
			then
				if key != hash.keys.last
					afterRs << (key + 1)  
				end
		end }
		
	vals = []
	afterRs.each {|x| vals << hash.fetch(x) }
	return vals.join
end
