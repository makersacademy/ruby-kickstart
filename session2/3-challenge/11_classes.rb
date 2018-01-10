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
	def initialize bottles
		if bottles < 0 
			@bottles = 0
		elsif bottles > 99
			@bottles = 99
		else 
			@bottles = bottles
		end
	end

	def print_song
		while @bottles > 1
			puts num_to_english(@bottles) + " " + bottle_check(@bottles) + " of beer on the wall,"
			puts num_to_english(@bottles) + " " + bottle_check(@bottles) + " of beer,"
			puts "Take one down, pass it around,"
			@bottles -= 1
			puts num_to_english(@bottles) + " " + bottle_check(@bottles) + " of beer on the wall."
		end
		if @bottles == 1
			puts "One bottle of beer on the wall,"
			puts "One bottle of beer,"
			puts "Take one down, pass it around,"
			puts "Zero bottles of beer on the wall."
			@bottles == 0
		end
	end

	def num_to_english number
		ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
		teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
		num_string = ""

		write = number / 10
		left = number - write*10

		if write > 1 || (write == 1 && left == 0)
			num_string << tens[write - 1]
		elsif write == 1
			num_string << teens[left - 1]
			left = 0
		end

		if write > 1 && left > 0
			num_string << "-"
		end

		if left > 0
			num_string << ones[left - 1]
		end

		num_string.capitalize
	end

	def bottle_check num
		if num == 1
			return "bottle"
		else
			return "bottles"
		end
	end

end