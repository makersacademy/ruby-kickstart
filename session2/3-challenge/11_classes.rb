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

require 'numbers_and_words'

class BeerSong
    
    attr_accessor :bottle_num
    
    def initialize(bottle_num)
        @bottle_num = bottle_num 
    end
    
    def print_song
        if @bottle_num > 99
            @bottle_num = 99
        elsif @bottle_num < 0
            @bottle_num = 0 
        end
        
        return "" if @bottle_num == 0
        
        while @bottle_num > 0 
            if @bottle_num > 2
                puts "#{@bottle_num.to_words.capitalize} bottles of beer on the wall,\n#{@bottle_num.to_words.capitalize} bottles of beer,\nTake one down, pass it around,\n#{(@bottle_num - 1).to_words.capitalize} bottles of beer on the wall."
            elsif @bottle_num == 2
                puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall."
            elsif @bottle_num == 1
                puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
            end
        @bottle_num -= 1
        end
    end
end

 BeerSong.new(0).print_song   