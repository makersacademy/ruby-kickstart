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

	attr_reader :bottles

	def initialize(bottles)
		if bottles > 99
			@bottles = 99
		elsif bottles < 0
			@bottles = 0
		else
			@bottles = bottles
		end
	end

	def bottles_to_string(num)
		#takes a string and returns the proper number
		retstring = ""
		ones_a = %w(one two three four five six seven eight nine)
  		teens_a = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen 
               eighteen nineteen)
  		tens_a = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

		retstring = 'zero' if num == 0

		tens = num/10
		ones = num - tens*10

		if num == 0 
			retstring = 'zero'
		elsif num >= 1 && num <= 9
			retstring = ones_a[num-1]				
		elsif num >= 10 && num <= 19
			retstring = teens_a[num-10]
		else
			retstring = "#{tens_a[tens-1]}"
			retstring << "-#{ones_a[ones-1]}" if ones != 0
				
		end

		retstring[0] = retstring[0].upcase if retstring[0] != nil
		#p retstring
		return retstring
	end

	def bottle_builder(num)
		if num == 1
			return 'bottle'
		else
			return 'bottles'
		end
	end

	def print_song
		bottles_left = bottles

		while bottles_left >= 1
			puts "#{bottles_to_string(bottles_left)} #{bottle_builder(bottles_left)} of beer on the wall,"
			puts "#{bottles_to_string(bottles_left)} #{bottle_builder(bottles_left)} of beer,"
			puts "Take one down, pass it around,"
			bottles_left -= 1
			puts "#{bottles_to_string(bottles_left)} #{bottle_builder(bottles_left)} of beer on the wall."
		end
	end

end

 # song = BeerSong.new(1000).print_song