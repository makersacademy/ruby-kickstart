# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  #select all the indicies for each occurance of R and r into an array
  letter = string.split(//).each_index.select {|i| string[i] =~ /[Rr]/}.map.each{|a| a+1}
  empty = ""
  for index in (letter)
    empty << "#{string[index]}"
  end
  empty
  end

pirates_say_arrrrrrrrr("Do they really say aree? or are you lying")
