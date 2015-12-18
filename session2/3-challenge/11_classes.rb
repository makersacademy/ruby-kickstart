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
		@bottles = bottles
		@bottles = 0 if bottles < 0
		@bottles = 99 if bottles > 99
	end

	#needed? public

	def print_song

		@ones_place = {
			1 => "one",
			2 => "two",
			3 => "three",
			4 => "four",
			5 => "five",
			6 => "six",
			7 => "seven",
			8 => "eight",
			9 => "nine",
			0 => "zero"
		}

		@tens_place = {
			90 => "Ninety",
			80 => "Eighty",
			70 => "Seventy",
			60 => "Sixty",
			50 => "Fifty",
			40 => "Forty",
			30 => "Thirty",
			20 => "Twenty",
			10 => "Ten"
		}

		@teens = {
			11 => "Eleven",
			12 => "Twelve",
			13 => "Thirteen",
			14 => "Fourteen",
			15 => "Fifteen",
			16 => "Sixteen",
			17 => "Seventeen",
			18 => "Eighteen",
			19 => "Nineteen"
		}


		def give_words (num)
			if @bottles.to_s.length == 1
				"#{@ones_place[@bottles]}".capitalize
			elsif @bottles % 10 == 0
				"#{@tens_place[@bottles]}"
			elsif (11..19).include? @bottles
				"#{@teens[@bottles]}"
			else
				ones = @bottles.to_s[1].to_i
				tens = @bottles.to_s[0].to_i * 10
				"#{@tens_place[tens]}-#{@ones_place[ones]}"
			end
		end

		def pluralize? (num)
			return "bottle" if num == 1
			"bottles"
		end

		until @bottles == 0 do
			
			puts "#{give_words(@bottles)} #{pluralize?(@bottles)} of beer on the wall,"
			puts "#{give_words(@bottles)} #{pluralize?(@bottles)} of beer,"
			puts "Take one down, pass it around,"
			@bottles -= 1
			puts "#{give_words(@bottles)} #{pluralize?(@bottles)} of beer on the wall."

		end
	end

end