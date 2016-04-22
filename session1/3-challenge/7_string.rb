# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string) 
r = false
new_str = ""
  string.downcase.each_char {|n|
    if r == true
      new_str << n 
    end
     n == "r" ? r = true : r = false
    }
new_str
     
end


