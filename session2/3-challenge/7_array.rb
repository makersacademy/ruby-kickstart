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

def alternate_words(sentence)
	punctuation = ["!", "@", "$", "#", "%", "^", "&", "*", "(", ")", "-", "=", "_", "+", "[", "]", ":", ";", ",", ".", "/", "<", ">", "?", "\\", "|"]
	punctuation.each {|char| sentence.gsub! char, '' }

	sentence = sentence.split
	#p sentence



	# not working well at all, need to re think
  	j = 0
  	for i in 0..(sentence.length - 1)	
  		#p i if i.odd?
  		#sentence.delete_at i if i.odd?  #not working because the ones I want to delete arent odd after doing some deleting

  		if i.odd?
			sentence.delete_at j if sentence[j] != nil
			j -= 1
  		end
  		j += 1
  	end




  	#sentence.each {|word| sentence.delete_at(sentence.index(word)) if sentence.index(word).odd?  }  #god damn how do i do this...

  	return sentence

end

 alternate_words("Lorem ipsum dolor sit amet.")
p alternate_words "Lorem ipsum dolor sit amet."
