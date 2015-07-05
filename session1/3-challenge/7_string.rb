# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
   #string.scan(/r./i).join("").tr('rR','') # would delete subsequent r's from result - FAILS TEST #2
   new_string = String.new
   (string.length-1).times do |index|
    new_string << string[index+1] if string[index] == 'r' || string[index] == 'R'
  end
  return new_string
end
#pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
#pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
#pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")