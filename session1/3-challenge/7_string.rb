# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  strarr = string.split('')
  newarr = strarr.each_index.select{|i| strarr[i] == 'r' || strarr[i] == 'R'}
  fnlarr = []
  newarr.each do |r1_index|
    r1_index += 1
    fnlarr.push("#{strarr[r1_index]}")
  end
  puts fnlarr.join("")
end