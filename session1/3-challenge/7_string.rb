# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

# def pirates_say_arrrrrrrrr(string)
#   arr = string.chars
#   new_word = ""
#   arr.each_with_index do |letter, index|
#     if letter == "r" || letter == "R"
#       new_word += arr[index + 1] if index + 1 < arr.length
#     end
#   end
#   new_word
# end

def pirates_say_arrrrrrrrr(string)
  a = string.chars
  arr =[]
  (0...a.length).each do |x|
    arr << a[x + 1] if a[x] == "r" || a[x] == "R"
  end
  arr.join
end

# p pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# p pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
p pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

