# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there
# won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered:
# ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Ein Satz wird bereitgestellt, gib ein Array zurück, das jedes zweite Wort
# überspringt. Zeichensetzung ist kein Teil des Wortes, ausser es handelt sich um
# eine Verkürzung. Um keinen Syntaxanalysierer schreiben zu müssen, wird es keine
# zu komplizierte Zeichensetzung geben.
#
# Es wird keine "'" geben, die nicht Teil einer Verkürzung sind.
# Folgende Zeichen sind nicht zu beachten:
# ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  '!@$#%^&*()-=_+[]:;,./<>?\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end
