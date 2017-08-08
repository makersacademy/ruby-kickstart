# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
   string.split(//).each_with_index.map{|x,z| string.split(//)[z+1] if x=="r" or x== "R"  }.compact.join
   
  
end
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
