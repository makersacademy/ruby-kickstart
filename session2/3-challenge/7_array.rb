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
	words = words.gsub(/[!@$#%^&*()-=_+:;,.|<>?]/, ' ')
	words.split(" ").select.each_with_index{|_,i| i % 2 == 0}
	# words.split(" ").each do |x| 
	# 	if x % 2 == 0
	# 		return x
	# 	end
	# end
end
	#words each do |x| return x.length.even?