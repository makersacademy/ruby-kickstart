# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false


def got_three?(input)
  input.each_cons(3) do | a, b, c |
    if (a == b) && (a == c) then return true
    end
  end
end

# I spent a lot of time on the following approach before discovering .each_cons
# I am still unsure why it doesn't work - perhaps because
# when it hits the end of the array, index+1 will return nil.

=begin
def got_three?(input)
  input.each.with_index do | item , index |
    if (item == input[index+1]) && (item == input[index+2]) then return true
    end
  end
  end
=end
# also, seems like you can't end a file with an embedded document!
