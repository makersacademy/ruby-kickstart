# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
 to_return = ""
 string.split("").each_with_index do |x, index| 
   if x == "r" || x ==  "R" # string[index] == "r"
    i = index + 1
    to_return << string[i] unless i == string.length #starts at zero
   end
 end
 to_return
end
puts pirates_say_arrrrrrrrr("are you really learning Ruby?")

#string.each{|x| string[(x.index('r')+1)]} fail attempted in doing one line
#string.split("").each_with_index but overcomplicated haha
#string.size.times do |index| less complicated
