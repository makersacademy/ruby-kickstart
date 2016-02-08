# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string) 
  array = string.split("")
  new_array = []
  r = false
    array.each { |letter|
      if r == true
        new_array << letter
      end
      if letter == "R" or letter ==  "r"
         r = true
      else
         r = false
      end
      }

new_array.join("")
end
# split the string into an array
# cycle through every character and check if its r
# if r == true then new_array << l
# if l == r then r = true
# else r = false



# if n == r then r = true

# we want to check what each letter is, if it
