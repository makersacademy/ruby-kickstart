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

  # put exclude characters in an array
  to_exclude ='! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |'.split(" ")

  # replace those characters with space
  arr_count = 0
  while arr_count < to_exclude.length
    to_exclude.each { |sign| sentence = sentence.gsub(sign, " ") }
    arr_count += 1
  end

  # put the words in an array
  words = sentence.split(" ")

  # let's alternate
  count = 0
  result = []
  while count < words.length do
      result << words[count] if count.even?
    count += 1
  end
  result
end

# alternate_words("Lorem ipsum dolor sit amet.")
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
# alternate_words("Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one.")
# alternate_words("is not enough--you need to choose")
# alternate_words("is not enough--you need . . to choose")
