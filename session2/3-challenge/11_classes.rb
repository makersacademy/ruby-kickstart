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


# this code doesn't yet work (working on it still...) but feels much nicer than the solution provided

class Beersong

	attr_accessor :beer

	def initialize(beer)
		@beer = beer
	end

	def english_number(number)
	if number < 0
		return 'Please enter a positive number'
	end
	if number == 0
		return 'zero'

	num_at_start = 99
	num_now > 2

	while num_now > 2
		puts english_number(num_now) + ' bottles of beer on the wall,'
		puts english_number(num_now) + ' bottles of beer!'
		num_now = num_now - 1
		puts 'Take one down, pass it around,' 
		puts english_number(num_now) + ' bottles of beer on the wall!'

	end
end

