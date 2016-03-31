# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  r_index, return_chars=[], ""
  string.length.times {|i| r_index << i if string[i] == 'r' || string[i] == 'R'}
  r_index.each {|index| return_chars << string[index+1] if index<string.length-1}
  return_chars
end
