# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
    attr_accessor 'number_of_bottles'
    def initialize(number_of_bottles)
        @number_of_bottles = number_of_bottles
        @number_of_bottles = 0 if number_of_bottles < 0
        @number_of_bottles = 99 if number_of_bottles > 99
    end
    
    def num_to_word(number)
	    ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	    tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

	    return "Zero" if number == 0

	    num_string = ""
	    write = number/10
	    left = number - write * 10
	    if write > 0
		    if ((write == 1) && (left > 0))
			    num_string << teenagers[left - 1]
			    left = 0
		    else
			    num_string << tens[write - 1]
			    num_string << "-" if left > 0
		    end
	    end

	    if left > 0
		    num_string << ones[left]
	    end
	    num_string.capitalize
    end
    
    public
    def print_song
        n = number_of_bottles
        while n > 0
            puts "#{num_to_word(n)} bottle#{n == 1 ? "" : "s"} of beer on the wall,"
            puts "#{num_to_word(n)} bottle#{n == 1 ? "" : "s"} of beer,"
            puts "Take one down, pass it around,"
            puts "#{num_to_word(n - 1)} bottle#{n == 2 ? "" : "s"} of beer on the wall."
            n -= 1
        end
    end
end