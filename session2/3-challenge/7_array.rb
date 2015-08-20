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
  words = sentence.gsub(/[^A-Za-z0-9]/s, '').split("")
  reponse = []
  words.each.with_index do |word, index|
      response << word if index.even?
  end
  response
end

# def alternate_words(sentence)
#   '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
#       sentence = sentence.gsub(char, ' ')
#   end
#   words = sentence.split
#   response = []
#   words.each.with_index do |word, index|
#       response << word if index.even?
#   end
#   response
# end