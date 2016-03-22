# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  pirates = string.split("")
  newstring = []
  # pirates.select{|val| val == "r"}

  pirates.each_with_index do |val, index|
    if val == "r" || val == "R"
      newstring << pirates[index +1].to_s
    end
  end
  newstring.join("")
      #if pirates.index(i) == "r"
      #variable = pirates.index(pirates.index[i])
      #      pirates[i] +1
      #end
      #newindex = index + 1
      #pirates[index]
end

#      variable = pirates.index(i)
#      pirates[variable + 1]

#  pirates.each do |val|
#    if val == "r" || val == "R"
#      variable = pirates.index(val)
#      newstring << pirates[variable + 1]
#    end
#  end
#  newstring.join("")

