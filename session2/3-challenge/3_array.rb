# Write a method named every_other_char for strings that,
# returns a string containing every other character.
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


class String
  def every_other_char
    to_return = ""
    each_char.with_index do | x, i |
      if i.even?
        to_return << x
      end

    end

  to_return

  end

end


