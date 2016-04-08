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
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  solution = []
  words = sentence.split
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end

# get second part of this fine (like being able to give a word an index number vs a character and searching accordingly)
# but struggling with the regex part... think we are substituting a space for wherever there is one of the symbols?
# I guess this lets you then iterate through the array (that now has spaces where there were symbols) and include every other word (excluding the symbols).
