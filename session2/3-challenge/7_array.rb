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

# def alternate_words(string)
#   no_punct = string.gsub(/[!@$#%^&*()-=_+:;,.<>?]/ , '');
#   no_punct.gsub!(/[\[\]|]/, '')
#   all_words = no_punct.split
#   p all_words
#   other_words = []
#   total_words = all_words.size
#   for index in (0...total_words).step(2)
#     other_words << all_words[index]
#   end
#   p other_words
# end

def alternate_words(sentence)
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  all_words = sentence.split
  other_words = []
  total_words = all_words.size
  for index in (0...total_words).step(2)
    other_words << all_words[index]
  end
  # all_words.each_with_index do |word, index|
  #   other_words << word if index.even?
  # end
  other_words
end

