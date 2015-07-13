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

def alternate_words(input_sentence)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |symbol|
    input_sentence = input_sentence.gsub(symbol,' ')
  end
  words = input_sentence.split
  output = []
  words.each_with_index do |word, index|
    output << word if index.even?
  end
  output
end
