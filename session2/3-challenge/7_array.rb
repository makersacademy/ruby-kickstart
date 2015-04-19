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

def alternate_words(words)
<<<<<<< HEAD
	words.gsub! /[!?,.]/, " "
	words = words.split
	sentence = []
	words.each_with_index { |text, index| sentence << text if index.even? }
	sentence
end
=======
	words.sub!(/[,\!]/, '')
	words.sub!(/[?]/, '')
	words = words.split(' ')
	puts words.length
	for x in 0..words.length
		puts x
		if x.odd?
     		words.delete_at(x)
    	end
   	end
   	puts words
end
>>>>>>> 0718f30a89be639e676a2adeb890b6cb8525ba11
