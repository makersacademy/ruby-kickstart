# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

#steps
	#define method that takes a string - turn into an array - check if need to do this
	#package up into a hash (not an array)
	#set keys so that they are string.downcase - how set keys specifically
	#set values based on an a count of the frequency a particular string or array element is there
	#store under one hash that is printed out

def new_hash(string)
	array = string.downcase.split(' ')
	puts array
	
	counts = Hash.new(0)
	array.each {|word| counts[word] +=1}
	puts counts
end

new_hash("The dog and the cat")

# "abcbcbababcbcx".each_char do |char|
#   character_counts[char] += 1
# end