# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

string_array = string.chars.to_a
output = ""
x=0

while x < string_array.size - 1


if string_array[x] == "r"
output << string_array[x+1]
elsif string_array[x] == "R"
output << string_array[x+1]

end

x += 1
end


return output


 
end
