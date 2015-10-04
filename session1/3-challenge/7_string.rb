# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = ''
  index = 0

  while index < (string.length) - 1
    if string[index].downcase == 'r'
      new_string += string[index+1]
      index +=1
    else
      index +=1
    end
  end
  
  new_string
end
