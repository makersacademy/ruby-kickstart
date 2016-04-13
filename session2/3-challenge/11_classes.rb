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
		@number = number

		number = 0 if number < 0
		number = 99 if number > 99
	end

		attr_accessor :number

	def print_song
		number.downto(1) do |x|
			puts song(x)
		end
	end

	def song(number)
		#numbers
		one_to_nine = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", 'Eleven', "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
		more = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]

		#rules
		x = number.to_s.split("")

		if number < 20
			numword = one_to_nine[number]
			numwordlessone = one_to_nine[number-1]
		elsif x[1].to_i == 1
			numword = more[(number-x[1].to_i)/10] + "-" + one_to_nine[x[1].to_i].downcase
			numwordlessone = more[(number-x[1].to_i)/10]
		elsif number % 10 == 0 && number > 20
			numword = more[(number-x[1].to_i)/10]
			numwordlessone = more[(number-x[1].to_i)/11] + "-" + one_to_nine[x[1].to_i-11].downcase
		elsif number == 20
			numword = more[(number-x[1].to_i)/10]
			numwordlessone = one_to_nine[x[1].to_i-1]
		elsif number > 20
			numword = more[(number-x[1].to_i)/10] + "-" + one_to_nine[x[1].to_i].downcase
			numwordlessone = more[(number-x[1].to_i)/10] + "-" + one_to_nine[x[1].to_i-1].downcase
		end

			#bottle or bottles grammar

		if number > 1 && numwordlessone != "One"
			bottles = "bottles"
			lastbottle = "bottles"
		elsif numword == "One"
			bottles = "bottle"
			lastbottle = "bottles"
		elsif numwordlessone == "One"
			bottles = "bottles"
			lastbottle = "bottle"
		end
		puts "#{numword} #{bottles} of beer on the wall,", "#{numword} #{bottles} of beer,", "Take one down, pass it around,", "#{numwordlessone} #{lastbottle} of beer on the wall."
	end
end