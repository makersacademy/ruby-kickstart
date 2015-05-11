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
    # I didn't have the 3 lines above, until checking the answer
    to_return = []
    word = sentence.split
    word.each_with_index do |item, index|
      to_return << item if index.even?
    end
    to_return
    #Below was my original line, attemptimg the gsub on punctuation at the end
    #to_return.each{ |s| s.gsub! '!@$#%^&*()-=_+[]:;,./<>?\|', '' }
end
