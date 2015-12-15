# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
return_array =[]
string_array = string.chars
v = 1
string_array.each do |i|
  if i == "r" || i == "R"
    return_array << string_array[v]
  end
  v+=1
end
return_array.join
end
