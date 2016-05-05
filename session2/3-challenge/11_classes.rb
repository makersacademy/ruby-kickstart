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

=begin
		def print_song
		n = @bottles
		eng_num = num_to_english(n)
		@bottle_s = 'bottles'
		while n != 0
		 is_n_1(n)
		 puts "#{eng_num} #{bottle_s} of beer on the wall,"
		 puts "#{eng_num} #{bottle_s} of beer,"
		 puts "Take one down, pass it around,"
		 n -= 1
		 is_n_1(n)
		 eng_num = num_to_english(n)
		 puts "#{eng_num} #{bottle_s} of beer on the wall."
		end
	end

	def is_n_1(n)
		if n == 1
			@bottle_s = 'bottle'
		else
			@bottle_s = 'bottles'
		end
	end
=end

class BeerSong
	attr_accessor :bottles

	def initialize(bottles)
		if bottles < 0
			bottles = 0
		elsif bottles > 99
			bottles = 99
		end
		@bottles = bottles
	end

	def print_song
		n = @bottles
		eng_num = num_to_english(n)
		bottle_s = 'bottles'
		while n != 0
		if n == 1
			bottle_s = 'bottle'
		end
		 puts "#{eng_num} #{bottle_s} of beer on the wall,"
		 puts "#{eng_num} #{bottle_s} of beer,"
		 puts "Take one down, pass it around,"
		 n -= 1
		if n == 1
			bottle_s = 'bottle'
		else
			bottle_s = 'bottles'
		end
		 eng_num = num_to_english(n)
		 puts "#{eng_num} #{bottle_s} of beer on the wall."
		end
	end



	def num_to_english(n)
	  string = ''
		if n/10 == 0
			if n == 0
				string += 'Zero'
			elsif n == 1
				string += 'One'
			elsif n == 2
				string += 'Two'
			elsif n == 3
				string += 'Three'
			elsif n == 4
				string += 'Four'
			elsif n == 5
				string += 'Five'
			elsif n == 6
				string += 'Six'
			elsif n == 7
				string += 'Seven'
			elsif n == 8
				string += 'Eight'
			elsif n == 9
				string += 'Nine'
			end
		elsif n/10 == 1
			if n == 10
				string += 'Ten'
			elsif n == 11
				string += 'Eleven'
			elsif n == 12
				string += 'Twelve'
			elsif n == 13
				string += 'Thirteen'
			elsif n == 14
				string += 'Fourteen'
			elsif n == 15
				string += 'Fifteen'
			elsif n == 16
				string += 'Sixteen'
			elsif n == 17
				string += 'Seventeen'
			elsif n == 18
				string += 'Eighteen'
			elsif n == 19
				string += 'Nineteen'
			end
		elsif n/10 > 1
			tens = n/10
			remainder = n - tens * 10
			if tens == 2
				string +='Twenty'
			elsif tens == 3
				string += 'Thirty'
			elsif tens == 4
				string += 'Forty'
			elsif tens == 5
				string += 'Fifty'
			elsif tens == 6
				string += 'Sixty'
			elsif tens == 7
				string += 'Seventy'
			elsif tens == 8
				string += 'Eighty'
			elsif tens == 9
				string += 'Ninety'
			end
		end
		if remainder != nil && remainder != 0
			single_digit = num_to_english(remainder)
		  	string += '-' + single_digit.downcase
		end
		string
	end
end


