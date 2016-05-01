# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    pirate_s = []
    string.split(//).each_with_index do |x, i| 
         if x == "R" || x == "r" 
         pirate_s << string[i + 1] 
        next if x != "R" && x != "r" 
        end
    end
    pirate_s.join("")
end
