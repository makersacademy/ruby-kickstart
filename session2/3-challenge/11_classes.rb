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

require 'to_words'

attr_accessor :beers

    def initialize(beers)
        beers = 0 if beers < 0
        beers = 99 if beers > 99
        @beers = beers
    end

    def print_song
        
		if beers == 0
            puts ""
        end

       	while beers > 0  #plural stanzas
			plural_lyrics = ["#{beers.to_words.capitalize.split(" ").join("-")} bottles of beer on the wall,", "#{beers.to_words.capitalize.split(" ").join("-")} bottles of beer,", "Take one down, pass it around,", "#{(beers - 1).to_words.capitalize.split(" ").join("-")} bottles of beer on the wall."]
			single_lyrics = ["#{beers.to_words.capitalize} bottle of beer on the wall,", "#{beers.to_words.capitalize} bottle of beer,", "Take one down, pass it around,"]

			if beers > 2 
          		puts plural_lyrics
          	    @beers -=1 
        	elsif beers == 2
            	puts plural_lyrics[0..2]
            	@beers -= 1     #= value of beers changes again here
            	puts "One bottle of beer on the wall."
            elsif beers == 1
            	puts single_lyrics[0..2]
            	@beers -=1     #= and here
            	puts "Zero bottles of beer on the wall."
            else
            	plural_lyrics[0..2]
            	puts "Zero bottles of beer on the wall"
            break if beers == 0
            end 
        end

    end
end



