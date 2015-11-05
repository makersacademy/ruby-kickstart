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

def alternate_words(str)
  return_arr = []
  punct = ['!', '@', '$', '#', '%', '^', '&', '*', '(', ')', '-', '=', '_', '+', '[', ']', ':', ';', ',', '.', '/', '<', '>', '?', '\\', '|']

  words = str.split(' ')
  words.length.times do |i|
    words[i] = words[i][0...-1] if punct.include? words[i][words[i].length - 1]
    words[i] = words[i][1...words[i].length] if punct.include? words[i][0]
    return_arr << words[i] if i.even?
  end
  return_arr
end
  
    

    
