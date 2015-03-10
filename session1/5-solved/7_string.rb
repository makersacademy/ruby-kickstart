# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

=begin
# My first failed script
def pirates_say_arrrrrrrrr(string)
  new_str = ""
  len = string.length
    len.times do |i|
      string[i] == "r" || string[i] == "R" if true
        new_str = new_srt + string[i+1]
  end
end

# My second failed script
def pirates_say_arrrrrrrrr(string)
  new_str = ""
  len = string.length
  len.times do |i|
  i== "r" || i == "R" if true
  new_str = new_str + string[i+1]
   end
end

# My third failed script
def pirates_say_arrrrrrrrr(string)
  to_return = ""
  len = string.length
  len.times do |index|
    if string[index,1] == ("r" || "R")
      to_return << string[index+1,1]
    else
      to_return
    end
  end
end
=end


def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end
