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
	
    def initialize n_of_bottles
        if n_of_bottles < 0
            @n_of_bottles = 0          
        elsif n_of_bottles > 99  
            @n_of_bottles = 99
        else
            @n_of_bottles = n_of_bottles   
        end        
    end

    def print_song
      while @n_of_bottles > 0      
         puts "#{int_to_eng(@n_of_bottles).capitalize} bottle#{@n_of_bottles == 1 ? "" : "s"} of beer on the wall,"
         puts "#{int_to_eng(@n_of_bottles).capitalize} bottle#{@n_of_bottles == 1 ? "" : "s"} of beer,"
         puts "Take one down, pass it around,"
         @n_of_bottles -= 1 
         puts "#{int_to_eng(@n_of_bottles).capitalize} bottle#{@n_of_bottles == 1 ? "" : "s"} of beer on the wall."
      end
    end

    def int_to_eng int
        units = ["", 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
        tenths = ["", 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
        teens = ["", 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

        if int.between?(11,19)

            return teens[int%10]

        elsif int > 0

            if int < 10
                return units[int]
            else
                tenths[int/10] + (int % 10 == 0 ? "" : "-") + units[int%10]
            end

        else
            return 'zero'
        end
    end
end