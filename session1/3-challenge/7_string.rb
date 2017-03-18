# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  counter = 0
  while counter < string.length-1
    if (string[counter] == "r" || string[counter] == "R")
      to_return << string[counter+1]
    end
      counter += 1
  end
  to_return
end
