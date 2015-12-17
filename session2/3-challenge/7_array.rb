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
	a = "!@$#%^&*()-=_+[]:;,./<>?\\|".chars
	(string.gsub(/-/," ").chars - a).join.split(" ").select.with_index{|_,i| i.even?}
end

print alternate_words "If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic."
