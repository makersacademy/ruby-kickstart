# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos string
	hash = Hash.new { 0 }
	# set everything to nill
	string.split.each_with_index { |word, index| hash[word] = nil }
	string.split.each_with_index do |word, index|
		# only set value if value is nil could have used ||=
		hash[word] = index if hash[word] == nil
	end
	hash
end

