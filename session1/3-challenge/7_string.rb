# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  after_r = false
  string.size.times do |index|
    char = string[index]
    to_return << char if after_r
    after_r = (char == "r" || char == "R")
  end
  to_return
end