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
    attr_accessor :bottles 

    def initialize(bottles)
        @bottles = 0 if bottles < 0
        @bottles = 99 if bottles > 99 
        @bottles = bottles
    end

    def print_song
        if @bottles == 0
            puts ""
        else @bottles.downto(1) do
            puts "#{english_number(@bottles)} #{more_than_one?} of beer on the wall,".capitalize
            puts "#{english_number(@bottles)} #{more_than_one?} of beer,".capitalize
            puts "Take one down, pass it around,"
            puts "#{english_number(@bottles-=1)} #{more_than_one?} of beer on the wall.".capitalize end
        end#not cycling
    end

    def english_number(number)
        if number == 0
            return "zero"
        end
        num_string = ''
        ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
        tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
        teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen,' 'seventeen', 'eighteen', 'nineteen']
        left = number
        write = left/10
        left = left - write*10
        if write > 0
            if ((write==1) && (left > 0))
                num_string = num_string + teens[left-1]
                left = 0
            else
                num_string = num_string + tens[left-1]
            end
        end
        write = left
        left = 0
        if write > 0
            num_string = num_string + ones[write-1]
        end
    end    
                
    def more_than_one?
        if @bottles == 1
            return "bottle"
        else 
            return "bottles"
        end
    end
  
end