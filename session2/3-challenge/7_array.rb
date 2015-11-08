# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |

def alternate_words(sentence)
  words = sentence.gsub(/[^a-zA-Z0-9\' ]/, '')
  words = words.split(" ")
  alternate_words = []
  i = 0
  words.each do |word|
    alternate_words << word if i.even?
    i += 1
  end
  p alternate_words
end

# Examples
#alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
#alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
#alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
#alternate_words "I could have made money this way, and perhaps amused myself writing code. But I knew that at the end of my career, I would look back on"
