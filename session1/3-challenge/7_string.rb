# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_str = ''
  s_array = string.split('')
  s_array.each.with_index do |c, i|
    if s_array[i + 1]
      new_str += s_array[i+1] if c =~ /[Rr]/
    end
  end
  new_str
end
