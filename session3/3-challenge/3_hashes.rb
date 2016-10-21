# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

#create function
def word_count(string)
  #create an array that makes everything lowercase, and splits the string
  split_string_array = string.downcase.split(" ")
  #iterate over the array to count duplicates, and assign the value to the hash.
  split_string_array.each_with_object(Hash.new(0)) {|word, count| count[word] += 1}
end
