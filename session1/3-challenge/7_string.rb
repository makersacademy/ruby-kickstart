# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

abb = (0 ... string.length).find_all { |i| string[i,1] == 'r' }

n=abb.count


for i in (0 .. n) do
    puts string[abb[i]+1]

    
    
    
end

end
