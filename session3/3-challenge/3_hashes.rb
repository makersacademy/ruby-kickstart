# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

#original
def word_count1 string
	result = {}
	string.downcase.split().each do |word|
		if result.has_key?(word)
			result[word] += 1
		else
			result[word] = 1
		end

	end
	return result
end

#refactored
def word_count string
	result = {}
	string.downcase.split().each{|word| result[word] = (result.has_key?(word))? result[word] + 1 : 1}
	return result
end

#p word_count "The dog and the cat"
#a1 = ["the", "dog", "and", "the", "cat"]
#p a1.count(a1[0])