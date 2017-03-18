# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  n=0
  newstring =""

  while n+1 < string.length do
    if
      string[n] == "r" || string[n] == "R"
      newstring << string[n+1]
    end
    n+=1
  end

  return newstring

end
