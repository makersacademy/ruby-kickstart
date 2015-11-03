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

def alternate_words(str)
'/[!@$#%^&*()-=+\[\]:;,.\/<>?\|]/'.split(//).each do |x|
  str = str.gsub(x, " ")
end

# I took the idea for this code block from the solution. The solution I came up
# with (below) was giving me a 'Can't modify frozen string' error when run with
# Rspec. It works if you just run it in Ruby though
#str.gsub!(/[!@$#%^&*()-=+\[\]:;,.\/<>?\|]/, "")  => This was my original code.
words = str.split
output = []
for i in 0..(words.length-1) do
  output << words[i] if i.even?
end
output
end
