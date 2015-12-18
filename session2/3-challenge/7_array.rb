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
  array = string.gsub(/[!@\$#%\^&\*\(\)-=_\+\[\]:;\.\/<>\?\\\|]/, " ").split
  new_array = []
  array.each_index { |x| new_array << array[x] if x % 2 == 0 }
  new_array
end

#need to look at Regex because that's a very long way to exclude the characters. (Couldn't find a way to exclude the apostrophe - tried \[^a-zA-Z' ]\ but it still replaced the apostrophe)