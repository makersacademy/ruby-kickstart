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
	'!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |x|
   	 	string = string.gsub(x, ' ')
  	end
	array = string.split
	new_array = []
	array.each_with_index do | array, i|
		new_array << array if i.even?
	end
#	array.select.each_with_index {|str, i| i.even?}
	new_array
end

#odds = numbers.select { |number| number.odd? }