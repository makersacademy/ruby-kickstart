# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  array_1 = string.downcase.split""
  array_2 = []
  
  loop do
    arrr = array_1.index("r")
    break if arrr == nil
    array_1.delete_at(arrr)
    array_2 << array_1[arrr]
  end
  
array_2.join

end
