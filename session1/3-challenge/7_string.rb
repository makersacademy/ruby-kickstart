# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
   arr_string = string.split("")
   new_string = []

   arr_string.each_with_index do |item, index|
   	if item == "r" || item == "R" 
  	new_string << arr_string[index +1].to_s
  	end
  end

  new_string.join("")
end

