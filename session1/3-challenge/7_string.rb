# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	ary = string.chars
    ary.each_with_index.map {|x, index| ary[index+1] if ary[index] == "r" || ary[index] == "R" }.reject {|x| x.nil?}.join
end
