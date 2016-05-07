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
	def initialize(number)
		if number <= 0
			@bottles = 0
		elsif number > 99
			@bottles = 99
		else @bottles = number
		end

		@one = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		@ten = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
		@teen = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	end

	def english_number

		if @bottles < 10
			@number_string = @one[@bottles - 1]
		
		elsif @bottles < 20
			@number_string = @teen [@bottles -1]

		else
			@array = @bottles.to_s.chars

			@number_string = @tens[@array[0].to_i - 1]

			unless @array[1] == '0'
				@number_string = @number_string + '-'

				@number_string = @one[@array[1].to_i -1]

			end
		end

		if @bottles > 1
			@ref = "bottles"
		else
			@ref = "bottle"
		end
	end

	def print_song


		while @bottles > 0
			
			english_number

			puts "#{@number_string.capitalize + ' ' + @ref} of beer on the wall,"
			puts "#{@number_string.capitalize + ' ' + @ref} of beer,"
			puts "Take one down, pass it around,"

			if @bottles > 1

				@bottles = @bottles - 1

				english_number

				puts "#{@number_string.capitalize + ' ' + @ref} of beer on the wall."

			else
				@bottles = @bottles - 1

				puts "Zero bottles of beer on the wall."
			end
		end
	end
end




	


