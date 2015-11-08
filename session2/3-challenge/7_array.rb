# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |

def alternate_words(sentence)
  words_uncleaned = sentence.split(/ /)
  words_cleaned = []
  alternate_words_cleaned = []
  words_uncleaned.each do |word|
    word_check = word.split('')
    unless word_check == ""
    word_check.select! {|caracter| caracter != "!" && caracter != "@" && caracter != "$" && caracter != "#" && caracter != "%" && caracter != "^" && caracter != "&" && caracter != "*" && caracter != "(" && caracter != ")" && caracter != "-" }
    word_check.select! {|caracter| caracter != "=" && caracter != "_" && caracter != "+" && caracter != "[" && caracter != "]" && caracter != ":" && caracter != ";" && caracter != "," && caracter != "\." && caracter != "/" && caracter != "<" }
    word_check.select! {|caracter| caracter != ">" && caracter != "?" && caracter != "\\" && caracter != "|" && caracter != "}" && caracter != ""}
    words_cleaned << word_check.join("")
    end
  end
  i = 0
  words_cleaned.each do |word|
    alternate_words_cleaned << word if i.even?
    i += 1
  end
  p alternate_words_cleaned
end

# Examples
#alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
#alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
#alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
#alternate_words "I could have made money this way, and perhaps amused myself writing code. But I knew that at the end of my career, I would look back on"
alternate_words "Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one."
