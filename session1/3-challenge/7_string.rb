# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

	arr = string.split(//)

  output = []
  arr.each_cons(2) { |a,b| output << b if a == "r" || a == "R" }
  output.join

end

p pirates_say_arrrrrrrrr("are you really learning Ruby?")