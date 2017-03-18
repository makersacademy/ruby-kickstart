# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  mystring = ""
  was_r = false
  string.size.times do |i|
    if was_r && string[i].downcase != "r"
      mystring << string[i]
      was_r = false
    elsif was_r && string[i].downcase == "r"
      mystring << string[i]
    elsif was_r != true  && string[i].downcase == "r"
      was_r = true    
    else
      next
    end
  end
  was_r = false
  mystring
end