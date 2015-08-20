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

module Words
	BIGGER = {9 => "ninety-", 8 => "eighty-", 7 => "seventy-", 6 => "sixty-"
							5 => "fifty", 4 => "forty-", 3 => "thirty", 2 => "twenty" }
	BIG = { 19 => "ninteen", 18 => "eighteen", 17 => "seventeen", 16 => "sixteen",
					15 => "fifteen", 14 => "forteen", 13 => "thirteen", 12 => "twelve", 11 => "eleven"}
	SMALL = { 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five",
						4 => "four", 3 => "three", 2 => "two", 1 => "one"}
	ZERO = { 0 => "zero"}
end						

class BeerSong

	def initialize(parameter)
		@bottles = 0 if parameter <= 0
		@bottles = 99 if parameter >= 99
		@bottles = parameter if parameter > 0
	end

	def sing
		@bottles.downto(0) do |i|
			song(i)
		end
	end 

	def song
		while @bottles >= 0
			puts "#{@bottles} bottles of beer on the wall,"
			break if @bottles == 0
			puts "#{@bottles} bottles of beer,"
			puts "Take one down, pass it around,"
			@bottles -= 1
		end
	end
end 

beer = BeerSong.new(154)
beer.song  