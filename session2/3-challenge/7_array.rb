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

def alternate_words(str)
	arr = str.scan(/\b\w+['’]?\w*/)
	new_arr = []
	i = 0
	while i < arr.length
		new_arr << arr[i]
		i += 2
	end
	new_arr
end

#p alternate_words("Lorem ipsum dolor sit amet.")
#p alternate_words("Can't we all get along?") 
#p alternate_words("Elementary, my dear Watson!")
#p alternate_words("if it is, don’t let tha")
#p 0.even?