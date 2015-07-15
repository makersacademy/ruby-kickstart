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

def alternate_words (sentence)

  no_punct = sentence.gsub(/-/, " ")  # Changes hyphenated words into two words"
  no_punct = no_punct.gsub(/[!@#$%^&*()=_+|;:",.<>?]/, "") # Removes all other punctuation

  array = no_punct.split # Splits the words into an array

  result = [] # Defines the variable where the final array will be

  array.each_with_index do |value, index| # Take the value and index of each entry in array
    if index % 2 == 0 # Check to see if even, eg. takes every other item
      result.push(value) # Pushes that item to the results array
    end
  end

p result

end

# alternate_words("This isn't a sentence yeah? Thanks")
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
# alternate_words "If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic."
# alternate_words "If in my lifetime the problem of non-free software is solved, I could perhaps relax and write software again. But I might instead try to help deal with the world's larger problems. Standing up to an evil system is exhilarating, and now I have a taste for it."
