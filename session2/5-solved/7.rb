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

def alternate_words(s)

  a = s.gsub(/[^\w\'\’\s]/, ' ').split

  b = []

  i = 0

  l = a.length

  while i <= l - 1
    if i.even?
      b << a[i]
    end
    i = i + 1
  end

  b

end

#print alternate_words("n$ad'v rose&nber'g don’t Karoline Ei&^lb'erg")
#puts
