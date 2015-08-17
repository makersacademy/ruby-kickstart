# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    to_return = ""               
  string.size.times do |index|                                              #size times we checkout our string 
    current_char = string[index]                                            #first time - current_char = index[0]
    next_char = string[index + 1] || ""                                     #next_char = index[1]  - cycle repeats size times.
    to_return << next_char if (current_char == "r" || current_char == "R")  #we add next_char to our result if the previous char 
  end                                                                       # is "r" or "R" 
  to_return                                                                 # the result which we output                          
end

