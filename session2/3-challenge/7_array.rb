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
  # A list of the characters not to be considered as part of the word, split the list, for each do:
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    # substitue each character with nothing, and put that back into sentence
    # This get's rid of them characters, and recreates the sentence for you
    sentence = sentence.gsub(char, ' ')
  end
  # split the sentence into words
  words = sentence.split
  # Create an empty array to depoist your solution into
  solution = []
  # Iterate through each word with an index doing:
  words.each_with_index do |word, index|
    # Add to solution array the word if the index is even
    solution << word if index.even?
  end
  # return the solution
  solution
end

=begin Without comments:

def alternate_words(sentence)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end

=end
