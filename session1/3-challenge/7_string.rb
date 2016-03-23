# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  pirates = string.split("")
   newstring = []


   pirates.each_with_index do |val,index|
     if val == "r" || val == "R"
       newstring << pirates[index + 1]
     end
   end
   newstring.join("")
end
