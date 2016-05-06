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
	attr_accessor :beerBottles

	def initialize(beerBottles)
		if beerBottles != 0
			@beerBottles = beerBottles >= 99 ? 99 : beerBottles
		else
			@beerBottles = nil
		end
	end

	def print_song
		btl = ''
		if @beerBottles
			while @beerBottles > 0  do
				num = (I18n.with_locale(:en) { @beerBottles.to_words }).capitalize
				@beerBottles -= 1
				nextNum = (I18n.with_locale(:en) { @beerBottles .to_words }).capitalize
				btl, nextBtl = num == 'One' ? 'bottle' : 'bottles', nextNum == 'One' ? 'bottle' : 'bottles'
				puts "#{num} #{btl} of beer on the wall,"
				puts "#{num} #{btl} of beer,"
				puts "Take one down, pass it around,"
				puts "#{nextNum} #{nextBtl} of beer on the wall." if @beerBottles != 0
			end
			puts "Zero bottles of beer on the wall." if @beerBottles == 0
		end
	end
end