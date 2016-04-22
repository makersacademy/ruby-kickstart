# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  newString = ''
  
  string.length.times do |index|
    newString += string[index + 1].to_s if string[index] == "r" || string[index] == "R"
  end
  
  newString
end

puts pirates_say_arrrrrrrrr("arararararararararrrrarar")
