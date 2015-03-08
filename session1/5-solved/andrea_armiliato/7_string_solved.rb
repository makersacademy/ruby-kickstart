# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arr_string = ""	 
  count = 0
  string.length.times do |x|
  	if string[count].downcase == "r" && count < string.length - 1
  		count += 1
  		arr_string << string[count]
  	else
  		count += 1
  	end
  end
  arr_string
end
