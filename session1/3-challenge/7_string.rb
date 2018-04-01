# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    # use next or i + 1 in an iteration? 
    # need to get _all_ instances of 'r' not just first
    # suggests to use .map rather than .select / .each

    # split in .chars
    # check each value for 'r', return .next 
end
