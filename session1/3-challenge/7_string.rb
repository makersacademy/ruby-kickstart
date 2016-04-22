# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
  new_arr = ""
  arr = string.split("")
  arr.each_with_index do |l, i|
    if l == "R" || l == "r"
       new_arr << arr[i+1].to_s
    else
      arr.delete(i)
    end
  end
  new_arr
end
