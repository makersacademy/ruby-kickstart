# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.


def word_count string
	hash = {}
	string.split(" ").each do |i|
		count = 0
		string.split(" ").each do |j|
			if i.downcase == j.downcase
				count += 1
			end
		end
		hash[i.downcase] = count
	end
	hash
end






# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}
print word_count "ThAt C b c c thAt b thaT"