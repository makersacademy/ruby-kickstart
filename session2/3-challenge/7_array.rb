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

class String
	def stripper
		self.gsub(/\!|\@|\$|\#|\%|\^|\&|\*|\(|\)|\-|\=|\_|\+|\[|\]|\:|\;|\,|\.|\/|\<|\>|\?|\\/x, '')
	end
end

def alternate_words(string)
	output = Array.new
	string.stripper.split("\s").each_with_index do |item,index|
		output << item if index % 2 == 0
	end
	output
end

puts alternate_words("Would a dating service on the net be frowned upon . . . ? I hope not")  # => ["Lorem", "dolor", "amet"]