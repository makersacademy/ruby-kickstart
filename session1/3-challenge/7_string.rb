# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

# Failure case, if neither 'r' nor 'R' found in the string
if !(string.include? 'r') && !(string.include? 'R')
  return ''
end


string_holder = string.dup
rR_position = Array.new

# Records indices of characters after each 'r' and replaces each 'r' with 'a'. It was the best I could come up with :|
while string.include? 'r' do
  rR_position.push(string.index('r') + 1)
  string[string.index('r')] = 'a'
end

# Ditto for 'R'
while string.include? 'R' do
  rR_position.push(string.index('R') + 1)
  string[string.index('R')] = 'a'
end

# Get the indices into ascending order and trim off final element if necessary, to deal with any strings ending in 'r' or 'R'
rR_position.sort!

if rR_position.last == string.length
  rR_position.delete_at(rR_position.length - 1)
end

# Finally fetch the correct letters from the original unedited string which was passed to pirates
output = String.new
rR_position.each { |a| output += string_holder[a] }

return output

end

