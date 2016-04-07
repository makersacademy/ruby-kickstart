# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  pirate_arrray = string.chars
  new_str = ""
  for i in 0...pirate_arrray.length
    if pirate_arrray[i].downcase == "r"
      !pirate_arrray[i+1].nil? ? new_str << pirate_arrray[i+1] : next
    end
  end
  new_str
end
