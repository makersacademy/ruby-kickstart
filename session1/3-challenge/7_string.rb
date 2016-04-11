# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string.scan(/(?<=r)./i).join
end
  # - String scan allows you to scan for a pattern in the string using Regular Expressions. In this case the regex combines /r./i which selects every r character and the character which follows (the i is a case insensitive flag). We have to combine this with a positive lookbehind assertion (?<=) to ensure we're matching all characters. The output is an array so join is used to return a string.
