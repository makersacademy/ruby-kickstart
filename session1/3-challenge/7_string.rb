# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  index_numbers = []
  to_return = []

  string.length.times do |index|
    index_numbers << index + 1 if (string[index] == "r" || string[index] == "R")
  end

  index_numbers.each do |index|
    to_return << string[index]
  end

  to_return.join("")

end
