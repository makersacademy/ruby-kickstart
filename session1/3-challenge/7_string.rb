# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  string_array = string.chars
  indexes = string_array.each_with_index.map {|char, index| char.downcase == 'r' ? index : nil}.compact # gives an array of the indexes we want
  indexes.map {|x| string_array[x+1]}.join # iterates through each index for string_array 

end
