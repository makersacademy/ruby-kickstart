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


require 'to_words'

class BeerSong

	attr_accessor :number

	def initialize (number)

		@number = number < 0 ? 0 : (number > 99 ? 99 : number)

	end

	def print_song

		for i in (@number).downto(1)

			puts "#{wordify_number(i)} on the wall,"
			puts "#{wordify_number(i)},"
			puts "Take one down, pass it around,"
			puts "#{wordify_number(i-1)} on the wall."
			puts ""
		
		end
	end

	private

	def wordify_number (number)

		"#{number.to_words.gsub(" ","-").capitalize} bottle#{'s' unless number ==1} of beer"

	end



end

song = BeerSong.new(100)

song.print_song


