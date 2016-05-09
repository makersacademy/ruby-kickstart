# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  array = string.to_s.split("")
  new_array = Array.new
  for i in 0..string.length do
      if array[i] == "r" || array[i] == "R"
        new_array << array[i + 1]
      end
  end
  new_array.join
end
