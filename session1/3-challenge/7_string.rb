# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
string.downcase!
new_string = ""
length = string.size
count = 0
while length > count do
	if string[count] == "r"
		count += 1
		new_string << string[count,1]
	else
		count += 1
	end

end
new_string
end

pirates_say_arrrrrrrrr("are you really learning Ruby?")
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
