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
 		@bottles = number if number >= 0 && number < 100
 		@bottles = 0 if number < 0
 		@bottles = 99 if number > 99
	end
 
 	def print_song
 		bottles_left = @bottles
 		while bottles_left > 0
 			puts bottles_left != 1 ? num2word(bottles_left) + " bottles of beer on the wall," : num2word(bottles_left) + " bottle of beer on the wall,"
 			puts bottles_left != 1 ? num2word(bottles_left) + " bottles of beer," : num2word(bottles_left) + " bottle of beer,"
 			puts "Take one down, pass it around,"
 		 	bottles_left -= 1
 			puts bottles_left != 1 ? num2word(bottles_left) + " bottles of beer on the wall." : num2word(bottles_left) + " bottle of beer on the wall."
 		end
 	 end
 
 	def num2word(number)
 		words_hash = {
 		0=>"Zero",
 	    1=>"One",
 		2=>"Two",
 		3=>"Three",
 		4=>"Four",
 		5=>"Five",
 		6=>"Six",
 		7=>"Seven",
 		8=>"Eight",
 		9=>"Nine",
 		10=>"Ten",
 		11=>"Eleven",
 		12=>"Twelve",
 		13=>"Thirteen",
 		14=>"Fourteen",
 		15=>"Fifteen",
		16=>"Sixteen",
 		17=>"Seventeen",
 		18=>"Eighteen",
 		19=>"Nineteen",
 		20=>"Twenty",
 		30=>"Thirty",
 		40=>"Forty",
 		50=>"Fifty",
 		60=>"Sixty",
 		70=>"Seventy",
 		80=>"Eighty",
		90=>"Ninety"
 		}
 		return words_hash[number] if number < 21
 		return number%10 == 0 ? words_hash[number] : words_hash[(number/10)*10] + "-" + words_hash[number%10].downcase
 	end
 
 end