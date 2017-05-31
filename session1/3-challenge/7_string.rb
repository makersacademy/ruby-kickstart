# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  newstring = ""
  add_next = false
  string.size.times do |index|
    char = string[index]
    newstring = newstring + char if add_next
    add_next = char == "r" || char == "R"
  end
    return newstring
end
puts pirates_say_arrrrrrrrr("Are you really learning Ruby?")
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
