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

	def initialize(bottles)
		bottles > 99 ? @bottles = 99 : @bottles = bottles
	end

	def bottles
		@bottles
	end

	def number_to_text(num)
		low_numbers = {0=>"Zero",1=>"One",2=>"Two",3=>"Three",4=>"Four",5=>"Five",6=>"Six",7=>"Seven",8=>"Eight",9=>"Nine",
	                10=>"Ten",11=>"Eleven",12=>"Twelve",13=>"Thirteen",14=>"Fourteen",15=>"Fifteen",16=>"Sixteen",
	                17=>"Seventeen", 18=>"Eighteen",19=>"Nineteen"}
	    high_numbers = {2=>"Twenty",3=>"Thirty",4=>"Forty",5=>"Fifty",6=>"Sixty",7=>"Seventy",8=>"Eighty",9=>"Ninety"}
	    return low_numbers[num] if num < 20
	    right_side = num % 10 == 0 ? "" : "-" + low_numbers[num % 10].downcase
	    left_side = high_numbers[num.to_s[0].to_i]
	    return left_side + right_side
	end

	def stanza
		puts "#{number_to_text(@bottles)} #{bottle_or_bottle?} of beer on the wall,"
		puts "#{number_to_text(@bottles)} #{bottle_or_bottle?} of beer,"
		puts "Take one down, pass it around,"
		@bottles -= 1
		puts "#{number_to_text(@bottles)} #{bottle_or_bottle?} of beer on the wall."
	end

	def bottle_or_bottle?
		@bottles == 1 ? 'bottle' : 'bottles'
	end

	def print_song
		while @bottles > 0
			stanza
		end
	end

end






