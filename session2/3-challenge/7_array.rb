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

<<<<<<< HEAD


#Maybe turn the string into an array for each word (like using split(" ")) and then pick the alternate words that way?


#HOW TO NOT INCLUDE FOLLOWING PUNCTUATION: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#So ' is fine (such as in "it's" or "I'd")
#Maybe we can find the above punctuation and substitute it for something else that is included? Use space



def alternate_words(sentence)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ') #looks for all of the above punctuation in each sentence, and replaces each of these characters with a space.
  end #DON'T FORGET TO ADD 'end'!! Was wondering why the punctuation was still being included...
  sentence_to_array = sentence.split(" ") #takes each word of a sentence into an element of a new array called sentence_to_array
  alternates_array = [] #defines alternates_array as array
  sentence_to_array.each_with_index do |sentence_to_array, index|
    alternates_array << sentence_to_array if index.even? #looks at our sentence_to_array and the index of each element, and takes the elements which have an even index number and puts it in our new alternates_array
  end
  puts alternates_array
end



alternate_words("Lorem ipsum dolor sit amet.")
alternate_words("Can't we all get along?")
alternate_words("Elementary, my dear Watson!")
=======
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
