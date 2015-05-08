# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arr = string.split(//)
    to_return = []

    arr.each_with_index do |x, i|
      if x == "r" or x == "R"
        to_return << arr[i+1]
     else
      "No 'r's found!"
     end
   end
  return to_return.join.to_s
end

pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
