# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    array = string.split("")
    newarray = []
    array.each_with_index do |v,i|
    	if v == "r" || v == "R"
    		newarray << i + 1
    	end
    end
    array.values_at(*newarray).join
end
