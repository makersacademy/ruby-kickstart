# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  result = ""
  str_a = string.chars
  str_a.each_index{|n| result << str_a[n+1] if n != str_a.length-1 && str_a[n]=="r" || str_a[n]=="R"}
  result
end
