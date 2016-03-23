# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
pirates = string.split("")
another_array = []

pirates.each_with_index do |char, index| 

if char == "r" || char == "R"

another_array << pirates[index +1]
end

end 
another_array.join

end
