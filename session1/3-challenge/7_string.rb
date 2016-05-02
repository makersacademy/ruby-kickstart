# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	characters = string.split('')
	char_index = []
	output = ""
	characters.each_with_index {|char,index| char.downcase == "r" ? char_index.push(index += 1) : ''}
 	characters.map.with_index {|char,index| char_index.include?(index) ? output << char : nil }.compact
 return output
end

print pirates_say_arrrrrrrrr("This is a really hard problem")