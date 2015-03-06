# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  mystring = ""
  wasr = false
  string.size.times do |i|
    if wasr && string[i].downcase != "r"
      mystring << string[i]
      wasr = false
    elsif wasr && string[i].downcase == "r"
      mystring << string[i]
    elsif wasr != true  && string[i].downcase == "r"
      wasr = true    
    else
      next
    end
  end
  wasr = false
  mystring
end