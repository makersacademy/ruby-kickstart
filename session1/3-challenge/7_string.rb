# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arrrrrrrr = ""
  string.length.times do |n|
    arrrrrrrr << string[n+1] if (string[n].downcase == "r" && n+1 != string.length)
  end
  return arrrrrrrr
end
