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

def alternate_words start_string

	deletion_array = '!@$#%^&*()-=_+[]:;,./<>?\|'.split(//)

	deletion_array.each do |char|
		start_string = start_string.gsub(char, ' ')
	end

	word_array = start_string.split(' ')
	new_array = []
	word_array.each_with_index do |word, index|
		new_array << word if index.even?
	end
	new_array
end

alternate_words 'a'