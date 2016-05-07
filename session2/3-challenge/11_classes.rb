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
	require 'humanize'
	attr_accessor :bottles

	def initialize(bottles)
		bottles < 0 ? @bottles = 0 : @bottles = bottles
		bottles > 99 ? @bottles = 99 : @bottles = bottles
	end

	def print_song
		(0...@bottles).each { |x| puts verse(@bottles-x)}
	end

	def verse (verse_number)
		(0...3).inject(""){ |mem, y|  mem << line(verse_number, y)}
	end

	def line (verse_number, line_number)
		lines = [" bottles of beer on the wall,\n", " bottles of beer,\nTake one down, pass it around,\n", " bottles of beer on the wall.\n"]
		verse_number -= 1 if line_number == 2
		word(verse_number) + (verse_number == 1 ? lines[line_number].sub("s", "") : lines[line_number])
	end

	def word number
		number.humanize.capitalize
	end


end