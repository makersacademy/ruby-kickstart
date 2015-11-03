# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ''
  setter = false
  string.length.times do |index|
    current_var = string[index]
    to_return << current_var if setter
    setter = (current_var == "r" || current_var == "R")
  end
  to_return
end

pirates_say_arrrrrrrrr("are you really learning Ruby?")
