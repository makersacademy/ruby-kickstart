# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
result = ""
string.each_char.with_index do |letter, i| 
if letter == "r"
result << "#{string[i+1]}"
end
if letter == "R"
result << "#{string[i+1]}"
end
end
result
end