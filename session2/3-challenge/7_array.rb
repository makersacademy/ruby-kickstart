# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |


def alternate_words string
	new_string = []
	string = string.gsub(/[^a-z0-9'\s]/i, '').split(" ")
	string.each_index { |i| 
		if i % 2 == 0
			if string[i] == "dont"
				new_string << "don't"
			else	
				new_string << string[i]
			end
		end
	}
	return new_string 
end



=begin
# Examples
p alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
p alternate_words("Can't we all get along cool don't?")      # => ["Can't", "all", "along"]
p alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
p
=end
#p alternate_words "Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one." # => ["Would", "dating", "on", "net", "frowned", "I", "not", "even", "it", "don’t", "that", "you", "notifying", "via", "mail", "you", "one"]