# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  newString = ""
  
  string.size.times do | index |
    if string[index].to_s.downcase == "r"
    newString << string[index+1] unless string[index+1].nil?
  end
  end
  newString
end
