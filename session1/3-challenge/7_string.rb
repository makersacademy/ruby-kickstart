# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arr = string.split(//)
  to_return = ""
   arr.each do |r|
     if r == /r/i
       match = arr.index(r)
      to_return << arr[match+1].to_s
     else
       puts "No 'r's found!"
     end
   end

end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
