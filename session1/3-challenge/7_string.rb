# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  result = ""
     next_char = false #next_char = false because the first letter doesnt follow r or R

     string.length.times do |i| #loop through the string
         current = string[i] #set the current character as current
         if next_char #if next_char is true
           result << current #add current character to result string
         end
        (current == "r" || current == "R") ? next_char = true : next_char = false
        #set next_char to true if current character is r or R
     end

     return result #return result string
end
