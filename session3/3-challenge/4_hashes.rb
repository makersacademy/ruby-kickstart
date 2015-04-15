# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

#steps
	#define method first_pos that takes a string as a parameter
	#split out string into an array that contains all the words
	#set up a new hash which array is then iterated into
	#figure out how mark the earliest position that specific word found in a string and set to value hash[keyword] = marker for how early found

def first_pos(string)
	array = string.split(' ')
	puts array
	
	position = {} 
	array.each_with_index do |word, index|
		position[word] ||= index #|= fills something if it doesn't already have a value so for keys where index already stored it will skip? 
	end
	puts position
end

first_pos("The dog and the cat and the cow")

#problem - if iterate over all of them then collects all indexes or just the last index e.g. position = 7
	#why isn't it storing through iteratively like in other example?
#problem - how deal with it just being the first instance, not all of them