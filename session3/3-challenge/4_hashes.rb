# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

# define method with string
def first_pos(string)
  # split the string into an array, downcase all the words
split_string_array = string.downcase.split(" ")
# create an empty hash to store the word and index
words_hash = {}
# iterate over the array, keeping the index
split_string_array.each_with_index do |word, index|
  #put the word as the key, and the index as the value into the words hash
words_hash[word] ||= index
end
# call the words hash
words_hash
end
