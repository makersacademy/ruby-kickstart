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
    if bottles > 99
        bottles = 99
    elsif bottles < 0
        bottles = 0
    else
        self.bottles = bottles
    end
    end
    

    def englishNumber(bottles)
        
    ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens = ['Ten', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
    teens = ['Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
    
    numberString = ''
    
    number = bottles
    ten = number/10
    number = number - ten*10
    
    if ten > 0
        if ((ten == 1) && (number > 0))
            numberString = teens[number - 1]
        number = 0
        else
            numberString = numberString + tens[ten - 1]
        end
    if number > 0
        numberString = numberString + '-'
    end
    end
    
    ten = number
    number = 0
    
    if ten > 0
        numberString = numberString + ones[ten - 1]
    end
    
    numberString
    
    end

    def print_song
        bottles.downto 1 do |x|
            print_lyrics(x)
    end
    
    def print_lyrics(bottles)
        if bottles == 0
            String.new
        else
        while bottles > 1
          if bottles > 9
            puts englishNumber(bottles) + ' bottles of beer on the wall, '
            puts englishNumber(bottles) + ' bottles of beer,'
            puts 'Take one down, pass it around,'
          elsif bottles <= 9
            puts englishNumber(bottles).capitalize + ' bottles of beer on the wall, '
            puts englishNumber(bottles).capitalize + ' bottles of beer,'
            puts 'Take one down, pass it around,'
          end
    bottles -= 1
            unless bottles == 1
                puts englishNumber(bottles).capitalize + ' bottles of beer on the wall.'
            end
        end
        end
    end

        puts 'One bottle of beer on the wall,'
        puts 'One bottle of beer,'
        puts 'Take one down, pass it around,'
        puts 'Zero bottles of beer on the wall.'
    end
end