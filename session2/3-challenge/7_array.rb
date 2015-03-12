




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

new_string = string.split

newer_string = new_string.map { |x| x.gsub(/[^0-9a-z']/i, '') }

newer_string.values_at(* newer_string.each_index.select {|i| i.even?})

end
# Works apart from the . . . in one of the test examples in rake
