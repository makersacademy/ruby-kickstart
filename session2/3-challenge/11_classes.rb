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
require 'humanize'

class BeerSong
	def initialize(beers)
		if beers < 0
			@beers = 0
		elsif beers > 99
			@beers = 99
		else
			@beers = beers
		end
	end

	def bottles_of_beer
		if @beers == 1
			"One bottle"
		else
			"#{@beers.humanize.capitalize} bottles"
		end
	end

	def print_song
		while @beers > 0
			puts "#{bottles_of_beer} of beer on the wall,"
			puts "#{bottles_of_beer} of beer,"
			puts "Take one down, pass it around,"
			@beers -= 1
			puts "#{bottles_of_beer} of beer on the wall."
		end
	end
end



