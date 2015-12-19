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

  # list al characters to be removed
  to_remove = ['!', '@', '$', '#', '%', '^', '&', '*', '(', ')',  '-', '=', '_',
  '+', '[', ']', ':', ';', ',', '.', '/', '<', '>', '?', '\\', '|', '  ', '--']

  # remove characters and any double spaces that are created
  to_remove.each do |char|
    sentence = sentence.gsub(char,' ') # replace remove characters with spaces
    sentence = sentence.gsub('  ',' ') # replace any double spaces wiht single spaces
  end

  # split remaining words and push every other one to result array
  words = sentence.split(/\s/)
  result = []

  for i in 0...words.length
    if i % 2 == 0
      result << words[i]
    end
  end
    return result

end
