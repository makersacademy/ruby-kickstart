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

def alternate_words (sentence)
	# I had to look for that first block. 
	#I got close but the 2nd sentence was giving me ["Can", "we", "get"] because of '
	# and this part of the script array = sentence.scan(/\w+/) had to be replaced with array = sentence.split for it to work.
    # 
    '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
	end
	array = sentence.split
	# This part was working. Still does. 
	new_array=[]
    array.each.with_index do |word, index|
    new_array << word if index.even?
    end
new_array
end
