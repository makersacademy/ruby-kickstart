# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  s = ''
  len = string.length
  (0...len).each do |x|
    if string[x] == "r" || string[x] == "R"
      break if x == len-1
      s << string[x+1]
    end
  end
  s
end
