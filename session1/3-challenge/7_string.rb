# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

    letters = ""

    string.size.times do |i|
    	puts "index = #{i}"
        current_letter = string[i]
        puts "current_char = #{current_letter}"
        next_letter = string[i + 1] || ""
        puts "letters = #{letters}, next_letter = #{next_letter}"
        letters << next_letter if (current_letter == "r" || current_letter == "R")
        puts "letters = #{letters}"
    end

    letters
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"