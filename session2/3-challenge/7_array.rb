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
	new_arr = []
	string.scan(/[\w’']+/).each.with_index { |element, index| new_arr << element if index.even? }   
	new_arr
end

# In other words, scan for 1 or more (signified by the plus symbol) word characters (signified by \w) and/or apostrophes (2 types)
# and send the words to the new array if their index is even.
