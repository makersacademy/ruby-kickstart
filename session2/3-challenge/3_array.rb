# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
   def initialize(strings)
    @strings = strings
    end

    def every_other_char
        oddchar=""
         @strings.size.times do |num|
            if num % 2 == 1
             oddchar << @strings[num]
            end

        end
        puts oddchar
    end
end
