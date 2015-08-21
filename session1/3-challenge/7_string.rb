# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string_array = string.split('')
  r_array      = []

  string_array.each do |item|
    if (item == 'r' || item == 'R')
      r_array.push string_array[(string_array.index(item))+1]
    end
  end

  r_array.join('')
end


