# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation 
# too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] 
# : ; , . / < > ? \ |
#
def alternate_words (string)

	a = string.gsub(/[^'|’|\w|\s]/," ")

	# puts string

	# puts "\n"

	b = a.split(" ")

	# puts "#{a}\n"

	c = []
	
	b.each_index {|i| c << b.fetch(i) if i.even?}

	c

end


# puts alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# puts alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# puts alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
# puts alternate_words("If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic.")
# puts alternate_words("Can't we all get along?")
# puts alternate_words("Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one.")