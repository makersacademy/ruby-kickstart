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
  words = []
  words_edit = []
  alternate_words = []
  words = sentence.split
  i = 0
  words.each {|z|
    if z.include? "-"
      extra_words = z.split("--") if z.include? "--"
      extra_words = z.split("-") if z.include? "-"
      words_edit[i] = extra_words[0]
      i += 1
      words_edit[i] = extra_words[1]
    else
      words_edit[i] = z
    end
    i += 1
  }
  i = 0
  while i < words_edit.length
    alternate_words[i/2] = words_edit[i]
    i += 2
  end
  i = 0
  words_export = []
  alternate_words.each {|x|
    temp_word = ""
    x.split("").each {|y| 
      unless [".", ",", "?", ";", "(", ")"].include? y
        temp_word = temp_word + y
      end
    }
    temp_word = nil if temp_word == ""
    words_export[i] = temp_word
    i += 1
  }
  words_export.compact
end

