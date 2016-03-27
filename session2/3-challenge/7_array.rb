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

def alternate_words(sentence)                                                                   #Define the method
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each { |char| sentence = sentence.gsub(char, ' ') }   #Substitutes any punctuation in string with a space
  words = sentence.split                                                                        #Splits the sentence string into an array called words
  answer = []                                                                                   #Creates a new array for the answer
  words.each_with_index do |word, index|                                                        #Loops on each word with an index
    answer << word if index.even?                                                               #Appends to the array if the index value is even
  end                                                                                           #Ends the loop
  answer                                                                                        #Returns the answer array
end                                                                                             #Ends the method


=begin JOSH'S SOLUTION
end
def alternate_words(sentence)
  # this will get better when we learn regular expressions :)
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