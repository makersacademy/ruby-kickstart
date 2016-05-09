# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr" t

def pirates_say_arrrrrrrrr(string)

  ans = ""

  a = string.split(//)
  # Splits each letter into an array and assigns it to variable "a".

  a.each_with_index do | x, i |

    # Calls a block (everything after pipes) with two arguments "x" and "i".

    # "x" represents the current letter in the array and "i" represents the index of the current letter in the array.

    # So in the below the current character and its index is passed into the block.

    if x.downcase == "r"

    # This block asks "is the current character (i.e. "x") a letter "r"? The .downcase adds to this, meaning we're actually asking if x was lower case would it match lower case "r". If it does then ruby executes the below.

      ans << a[i+1].to_s

    # This selects the next character after the current character using its index ("[i+1]"), converts it to a string and adds it to the current stored value of ans.

    end

  end

  ans

end
