# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(string)

	unwanted = ["!","@","$","#","%","^","&","*","(",")","-","=","_","+","[","]",":",";",",",".","/","<",">","?","|"]
	counter = 0
	new_str_arr = Array.new 

	unwanted.each do |symbol|
		string = string.gsub(symbol," ")
	end
	array_str = string.split(" ");

	while counter < array_str.length do  
		if counter.even?
			new_str_arr.push(array_str[counter])
		end	
	counter += 1	
	end
	
	return new_str_arr

end	

# alternate_words("Lorem! @ipsum: dolor sit amet.")