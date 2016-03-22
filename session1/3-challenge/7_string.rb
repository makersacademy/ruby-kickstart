# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  index_of_r = []
  string.split("").each.with_index { |e, i| # Find out how many lower or uppercase "r" there is in string
    index_of_r << i  if string[e] == 'r' || string[e] == 'R'  # Append the index of every 'r' to index_of_r
  }
  return index_of_r.each.with_index { |r, i| index_of_r[i] = string[r+1] }.join("")  # return the string with chars following every r
end
