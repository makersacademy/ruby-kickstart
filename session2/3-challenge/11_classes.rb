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

	def initialize(num_of_bottles)
		if num_of_bottles < 0
			@bottles = 0
		elsif num_of_bottles > 99
			@bottles = 99
		else
			@bottles = num_of_bottles
		end
	end

	def num_to_s(bottles)
		tens = ["Ninety","Eighty","Seventy","Sixty","Fifty","Forty","Thirty","Twenty"]
		teens = ["Nineteen","Eighteen","Seventeen","Sixteen","Fifteen","Fourteen","Thirteen","Twelve","Eleven","Ten"]
		digits = ["nine","eight","seven","six","five","four","three","two","one"]
		answer = ""
		to_write = bottles / 10
		left = bottles - (to_write * 10)
		if to_write == 1
			answer = teens[-1*(left+1)]
		elsif to_write == 0
			answer = digits[-1*left].capitalize
		else
			answer = tens[-1*(to_write-1)]
			if left > 0
				answer += "-#{digits[-1*(left)]}"
			else
				answer
			end
		end
	end

	def print_song
		bottles = @bottles
		while bottles >= 2
			num = num_to_s(bottles)
			puts "#{num} bottles of beer on the wall,"
			puts "#{num} bottles of beer,"
			puts "Take one down, pass it around,"
			bottles -= 1
			num = num_to_s(bottles)
			if bottles > 1
				puts "#{num} bottles of beer on the wall."
			else
				puts "One bottle of beer on the wall."
			end
		end
		if bottles == 1
			puts "One bottle of beer on the wall,"
			puts "One bottle of beer,"
			puts "Take one down, pass it around,"
			puts "Zero bottles of beer on the wall."
		end
	end

end	