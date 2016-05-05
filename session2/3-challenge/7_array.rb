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
  # Creates new method that takes one argument
  # "sentence".

  to_return = []
  # Creates new variable and assigns it an
  # empty array.

  sentence.scan(/[\w’']+/).each.with_index {|x, i| to_return << x if i.even?}

  to_return

end

# "can't read well."
# /w/         =>  ["w"]
# => scans for the letter "w"

# /\w/        =>  ["c", "a", "n", "t", "r", "e",
#                 "a", "d", "w", "e", "l", "l"]
# => scans for each word character

# /\w’/       =>  []
# => scans for "[word character]’"

# /\w'/       =>  ["n'"]
# => scans for "[word character]'"

# /\w’'/      =>  []

# /[\w’']+/  =>  ["can't", "read", "well"]

# /\w+/       =>  ["can", "t", "do", "that"]

# /[w’]/      =>  ["c", "a", "n", "t", "r", "e",
#                 "a", "d", "w", "e", "l", "l"]

# /[\w’']/    =>  ["c", "a", "n", "t", "r", "e",
#                 "a", "d", "w", "e", "l", "l"]