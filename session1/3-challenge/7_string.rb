# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  array = ""
  string.size.times do |l|
    if l =  ( "r" || "R" )    
          array << string[l]
    end
end
  array
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?")