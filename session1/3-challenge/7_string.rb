# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  speech = ""
  
  argh = string.split(//)
  
  argh.size.times do |x| 
    this = argh[x]
    that = argh[x + 1] || ''
    speech << that if (this == "r" || this == "R") 
  end

speech
end



