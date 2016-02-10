# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
    to_return = ""

    string.size.times do |index|
        current_char = string[index]
        next_char = string[index + 1] || ''

        to_return << next_char if (current_char == "r" || current_char == "R")
    end

    to_return
end




#def pirates_say_arr(string)
  #string.gsub(/(?<=!r)./i, '')
#end



#def pirates_say_arrrrrrrrr(string)
	#newstring = ""
	#string.each.char.with_index |x|
#end
