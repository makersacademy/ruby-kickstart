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

#these are the two we need to ignore: '’

def alternate_words(string)
  final_string = []
  string.gsub(/[^a-z0-9'’\s]/i, ' ').split.each_with_index {|word, index| final_string << word if index.even?}
  final_string
end

p alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
p alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
p alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
