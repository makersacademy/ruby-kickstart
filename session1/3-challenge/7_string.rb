# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  result = ""
  add_char = false

  string.size.times do |n|
    result = add_char ? (result << string[n]) : result

    add_char = ((string[n] == "r") || (string[n] == "R"))
  end
  return result
end
