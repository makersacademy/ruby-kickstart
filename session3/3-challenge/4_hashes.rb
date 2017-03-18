# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(str)
  out={}
  str.gsub(/[^a-zA-Z ]+/, " ").split(" ").map.with_index {|x, i| [x, i]}.each {|x| out.store(x[0], x[1]) if out[x[0]] == nil }
  out
end
