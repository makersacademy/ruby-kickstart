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

def alternate_words(the_sentence)
  not_cons = "! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |"

  not_cons.length.times do |ticker|
    if the_sentence.include? not_cons[ticker]
      the_sentence[not_cons[ticker]] = " "
    end
  end

  splitted, the_sentence = [], the_sentence.split
  the_sentence.size.times do |index|
    splitted << the_sentence[index] if index.even?
  end
  splitted

end
#alternate_words ("Lorem ipsum dolor sit amet.")