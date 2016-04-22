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

	def initialize(bottle_count)
		if bottle_count > 99
			@bottle_count = 99 
		elsif bottle_count < 0 
			@bottle_count = 0
		else
			@bottle_count = bottle_count
		end
	end

	def number_to_text(number)
	 	tens_arr = ["","","Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
	 	teens_arr = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
	 	singles_arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	 	
		first_digit = number.to_s.length == 1 ? 0 : number.to_s[0].to_i
		sec_digit = number.to_s[-1].to_i
		
		if first_digit > 1
			tens_arr[first_digit] + (sec_digit > 0 ? "-#{singles_arr[sec_digit]}" : "")
		elsif first_digit == 1
			teens_arr[sec_digit]
		else
	   	singles_arr[sec_digit]
		end
	end

	def print_song
		cnt = @bottle_count
		for i in 0...@bottle_count do

			(cnt - i) == 1 ? bottle_s = "bottle" : bottle_s = "bottles"
			puts "#{number_to_text(cnt - i).capitalize} #{bottle_s} of beer on the wall,"
			puts "#{number_to_text(cnt - i).capitalize} #{bottle_s} of beer,"
			puts "Take one down, pass it around,"

			(cnt - i - 1) == 1 ? bottle_s = "bottle" : bottle_s = "bottles"
			puts "#{number_to_text(cnt - i - 1).capitalize} #{bottle_s} of beer on the wall."
		end
	end
end