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

def alternate_words(string)
  string = string.gsub("'", "oooPS")
  string = string.gsub("’", "xxyxY")
  alternate(string.split(/\W+/))
end



def alternate(array)
  array.each do |s|
      s.gsub!("oooPS", "'")
      s.gsub!("xxyxY", "’")
  end

  array_every_other = []
  array.each.with_index { |e, index | array_every_other.push(e) if (index % 2 == 0) }
  return array_every_other
end



# def alternate_words(sentence)
#   # this will get better when we learn regular expressions :)
#   '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
#     sentence = sentence.gsub(char, ' ')
#   end
#   words = sentence.split
#   solution = []
#   words.each_with_index do |word, index|
#     solution << word if index.even?
#   end
#   solution
# end




#http://stackoverflow.com/questions/7622369/ruby-extracting-words-from-string
