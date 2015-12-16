# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string_array = string.split (//)
  new_string = []
  index_pos_r = 0
  index_pos_after_r = 0

  after_r = string_array.collect {|letter| letter == "r" or letter == "R"}

  string_array.length.times do
      if after_r[index_pos_r]
        index_pos_after_r = index_pos_r + 1
        new_string.push string_array[index_pos_after_r]
      end
      index_pos_r += 1
  end

  return new_string.join("")

end
