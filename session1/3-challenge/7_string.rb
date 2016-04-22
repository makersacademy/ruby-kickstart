# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  return_string = ""

  string_length = string.length

  for x in 0...string_length
    if string[x] == "r" || string[x] == "R"
      return_string << string[x+1] unless (x+1) == string_length
    end
  end
  return_string
end
