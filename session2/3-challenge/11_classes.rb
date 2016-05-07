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
	def initialize startAmount
		if startAmount <= 0
			@bottles = 0
		elsif startAmount > 99
			@bottles = 99
		else
			@bottles = startAmount
		end

		@ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		@tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
		@teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	end

	def english_num
		# get the single digit numbers out of the way
		if @bottles < 10
			@numString = @ones[@bottles - 1]

		# then the teens
		elsif @bottles < 20 && @bottles > 10
			@numString = @teens[@bottles - 11]

		# then translate everything else
		else
			# split the 2 digit number into an array
			@bottle_array = @bottles.to_s.split('')

			# translate the first digit into tens (eg ten, twenty)
			@numString = @tens[@bottle_array[0].to_i - 1]

			# if number ends in 0, move on because the
			# whole number has already been translated.
			# otherwise...
			unless @bottle_array[1] == "0"
				# append the translated second digit to the final string
				@numString += '-' + @ones[@bottle_array[1].to_i - 1]
			end
		end

		# also do a little check for the correct plural/singular bottle
		if @bottles > 1
			@plural = "bottles"
		else
			@plural = "bottle"
		end
	end

	def print_song
		# get the current translated string for the number
		english_num

		while @bottles > 0
			puts "#{@numString.capitalize + ' ' + @plural} of beer on the wall,"
			puts "#{@numString.capitalize + ' ' + @plural} of beer,"
			puts "Take one down, pass it around,"

			if @bottles > 1
				@bottles -= 1
				english_num

				puts "#{@numString.capitalize + ' ' + @plural} of beer on the wall."
			else
				@bottles -= 1
				english_num

				# this one is different because it's the last bottle
				puts "Zero bottles of beer on the wall."
			end
		end
	end
end
