# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  text = ""
  string.length.times do |i|
    next if i==0
    text << string[i] if string[i-1].downcase == "r"
  end
  text
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?")
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
