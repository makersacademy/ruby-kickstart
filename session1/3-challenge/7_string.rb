# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  return_string = ''
  arr = string.split(//) # =>
  arr.each_index do |item|
    if arr[item].downcase == 'r' && arr[item+1] != nil
      return_string << arr[item+1]
    end
  end

  return_string # =>
end

puts pirates_say_arrrrrrrrr('Pirates say arrrrrrrrr')