# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	string = string.downcase.split('')
	pirates=[]
	counter = 0
	string.each do |x|
		if x == 'r'
			counter = counter + 1
			pirates.push(string[counter])
		else
			counter = counter + 1	
		end
	end
	return pirates.join	
end
