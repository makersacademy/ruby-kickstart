def first_pos(str)
  #return Hash.new
  words = str.split(' ')
  hash = Hash.new #{ |this_hash, key| this_hash[key] = 0 }
  words.each_with_index do |word,index|
    unless hash.has_key?(word)
      hash[word] = index
      #puts "#{word} + #{index}"
    end
  end
  #hash.each do |word,nr| puts "#{word} - occurs: #{nr} pos" end
  hash
end

# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
#first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

