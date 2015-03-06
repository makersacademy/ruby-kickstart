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

	def initialize(beer)
		if beer > 99
			@beers = 99
		elsif beer < 0
			@beers = 0
		else
			@beers = beer
		end
	end

	def number(num)

		tens_array = ['Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
		teen_array = ['Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
		ones_array = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

		if num / 10 >= 2
			tens = tens_array[ (num / 10) - 2]
			x = (((num / 10.0) - (num / 10)) * 10 ).round(2)
			if x == 0
				out = tens
			else
				ones = ones_array[(x - 1).to_i]
				out = tens + '-' + ones
			end
		elsif 			
			num / 10 == 1
			x = (((num / 10.0) - (num / 10)) * 10 ).round(2)
			out = teen_array[x]
		elsif num != 0
			out = ones_array[num-1].to_s.capitalize
		else
			out = 'Zero'
		end
		out
	end


	def out_put(num)
		return if number(num) == 'Zero'
		drinks = number(num)
		drinks == 'One' ? bottles = 'bottle' : bottles = 'bottles'
		puts "#{drinks} #{bottles} of beer on the wall,"
		puts "#{drinks} #{bottles} of beer,"
		puts "Take one down, pass it around,"
		drinks = number(num-1)
		drinks == 'One' ? bottles = 'bottle' : bottles = 'bottles'
		puts "#{drinks} #{bottles} of beer on the wall."
		out_put(num -1)
	end

	def print_song
		out_put(@beers)
	end

end

BeerSong.new(100).print_song
