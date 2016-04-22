# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  pirate = ""
  # Add a blank index at the end of string in case it ends in 'r'
  string << " "
  string.each_char.with_index { |chr, ind|
    pirate << string[ind+1] if ["r","R"].include?(chr)
  }
  # strip to remove that extra space at the end
  pirate.strip
end
