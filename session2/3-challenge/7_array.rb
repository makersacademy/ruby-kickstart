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
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char| 
    sentence = sentence.gsub(char, ' ') #we need to get rid of every 'weird' character, so iterating 
    end									#over the string and then gsub those char with " ", we get a
    									#string we can work with
  sentence.split.select.with_index do |word, index| #after that we check if index.even? for every word
  word if index.even?								#if it is we say to the program to select those words
  end												#select method gives us a new array
end

