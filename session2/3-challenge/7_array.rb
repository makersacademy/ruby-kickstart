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

def alternate_words (string)
	solution = []
	prestring = string.split(/--/).flatten.join(" ")
	prestring2 = string.split(/-/).flatten.join(" ")
	prestring2.split(" ").each.with_index do |word, ind|
		if ind % 2 == 0
			if ("a".."z").include? (word[-1])
				solution << word
			elsif ("A".."Z").include? (word[-1])
				solution << word
			else
				solution << word.slice(0...-1) unless word.slice(0...-1) == ""
			end
		end
	end
	solution
end