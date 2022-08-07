# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string_split = string.split("")
  new_array = []

  # split characters from string.
  # create new array for storing edited string.

  string_split.each_with_index do |l, i|
    # p "#{i}: #{l}" if l.include?("r")
    new_array.push(string_split[i + 1]) if l =~ /[Rr]/
  end

  # find index of each string in split array.
  # able to print index: letter.
  # able to print index: letter if l.include?("r").
  # can push letters to new_array if contain [rR].
  # can push letters[index + 1] to new_array if contain [rR].

  return new_array.join
end

p pirates_say_arrrrrrrrr("are you really learning Ruby?")
