# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  string.size.times do |index|
    next if string[index] != "r"
      to_return << string[index]
    end
    to_return
end
puts pirates_say_arrrrrrrrr("What are you making me do here?")
