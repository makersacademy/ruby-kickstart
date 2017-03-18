# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  solution = ''
  trigr = false;

  (0..string.length-1).each do |i|
    if string[i].downcase == 'r' && i!=string.length-1
      solution << string[i+1]
    end
  end

  return solution

end
