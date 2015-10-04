# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  result = ''
  (string.size-1).times do |i|
    string.downcase[i] == 'r' ? result << string[i+1] : next
  end
  result
end
