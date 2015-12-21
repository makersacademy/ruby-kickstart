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

	attr_accessor :num_bottles

	def initialize(random_number)

		if random_number <= 0
			random_number = 0
		end

		if random_number >= 99
			random_number = 99
		end

		@num_bottles = random_number

	end

	def translate(n)
		# function to translate numbers into English
    	if 0 <= n && n <= 19
    		# if number passed in is less than or equal to zero, and greater than or equal to 19, go to the index [n] of that number in the following array, and return the element
    		# %w(array) is shortcut notation to define an array of strings separated by white spaces, instead of with commas and quotes around each one
      		%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    	elsif n % 10 == 0
    		# if number passed in has a remainder of 0 when divided by ten (i.e. if number is a multiple of ten), divide the number by 10 [n/10], go to this index number and return the element
      		%w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    	else
    		# n/10*10 to get tens place (i.e. integer division - 88/10=8, then 8*10=80), combined with n%10 (gives remainder of n/10) to get the ones place
     		"#{translate (n/10)*10}-#{translate n%10}".downcase
    	end.capitalize
  	end

	def print_song

		num = num_bottles
			
			while num >= 1

						if num == 2
							puts "#{translate num} bottles of beer on the wall,", "#{translate num} bottles of beer,"

							num = num-1

							puts "Take one down, pass it around,", "#{translate num} bottle of beer on the wall."

						elsif num == 1
							puts "One bottle of beer on the wall,", "One bottle of beer,"
							puts "Take one down, pass it around,", "Zero bottles of beer on the wall."
							
							break

						else
							puts "#{translate num} bottles of beer on the wall,", "#{translate num} bottles of beer,"

							num = num-1

							puts "Take one down, pass it around,", "#{translate num} bottles of beer on the wall."

						end
			end
	end
end
