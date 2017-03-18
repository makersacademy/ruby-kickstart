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
  my_words = []
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split("").each do |c|
    sentence = sentence.gsub(c, " ")
  end
  words = sentence.split
  #words = sentence.split(/[\s!@$^&*()-=_+[\]:;,.\/#%<>?\|]/)       <--What's wrong with this??
  words.each_with_index do |w, i|
    next if i.odd?
    my_words << w
  end
  my_words
end

p alternate_words("I want to go home, I'm to sleepy to stay")
p alternate_words("We won't come, anyway")
p alternate_words("You know I like it, but a whole cake is too much also for me!")
p alternate_words("Don't be silly: of course I'll drive you home!")
p alternate_words("Are you ok? You seem pale...")
p alternate_words("Lorem ipsum dolor sit amet.")
p alternate_words("Can't we all get along?")
p alternate_words("Elementary, my dear Watson!")