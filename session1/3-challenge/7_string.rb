# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

return_value =[]
array = string.chars
x = 1
array.each do |i|
  if i == "r" || i == "R"
    return_value << array[x]
  end

x+=1

end 

return_value.join

end
