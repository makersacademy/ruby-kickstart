# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"



def pirates_say_arrrrrrrrr(string)
  string_to_return = ""  
  string.length.times do |i|
  current_character = string[i]
  next_character = string [i+1] || '' 
  string_to_return << next_character if (current_character == "R" || current_character == "r")
end
 
string_to_return

end


#def pirates_say_arrrrrrrrr(string)
  #string.each_char.each_cons(2)
    #.with_object("") do |(a,b), to_return|
   #   next unless a.downcase == "r"
  #    to_return << b
 #   end
#end
