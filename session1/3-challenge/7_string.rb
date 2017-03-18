# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string_array = string.split('')
  # print string_array
  r_array      = []

  index = 0

  while index < string_array.length
    if (string_array[index] == 'r' || string_array[index] == 'R')
      r_array << string_array[index + 1]
    end

    index += 1
  end

  # string_array.each do |item|
  #   print item

  #   if (item == 'r' || item == 'R')

  #     r_array.push string_array[(string_array.index(item))+1]

  #     print string_array.index(item)
  #   end
  # end

  r_array.join('')

end


# puts pirates_say_arrrrrrrrr("are you really learning Ruby?")