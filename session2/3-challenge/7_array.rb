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

#steps
	#build a function called alternate_words which takes a string
	#need to turn that string into an array
	#iterate over the array and store string of every other index in another array
	#Remove specified list of punctuation from each element (method to do this?)
	#return that new array -> may need to set-up empty variable for that array

def alternate_words(sentence) #Not clear why failing test because exact same output
	array = sentence.split(' ')
	
	new_array = []
	array.length.times {|index| new_array << array[index] if index.even?}
	new_array.map! {|element| element.gsub(/\p{P}(?<!')/, "")}
	return new_array
end

alternate_words("Lorem ipsum dolor sit amet.")
alternate_words("Can't we all get along?")
alternate_words("Elementary, my dear Watson!")


