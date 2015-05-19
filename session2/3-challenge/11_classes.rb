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
	def initialize(num_beers)
		if (num_beers < 0)
			num_beers = 0
		elsif (num_beers > 99)
			num_beers = 99
		end

		@num_beers = num_beers
	end
	
	def number_to_wrds(number)

		dictionary1 = {0 => "zero", 1 => "one",2 => "two",3 => "three",4=> "four",5 => "five",6 => "six",7 => "seven",8 => "eight",9 => "nine"}
	
		dictionary2 = {1 =>"Ten", 2 =>"Twenty", 3=> "Thirty", 4=> "Fourty", 5=> "Fifty", 6=>  "Sixty", 7=>"Seventy", 8=> "Eighty", 9=>"Ninety"}

		if (number / 10 < 1)
			return dictionary1[number].capitalize
		elsif (number % 10 == 0)
			return dictionary2[number]
		end

		return dictionary1[number % 10] + "-" + dictionary2[(number / 10).to_i]
	end

	def print_song
		if (@num_beers == 0)
			return
		end
	
		@num_beers.downto(1) do |beers_left|
	
			count_string = number_to_wrds(beers_left)
			remain_string = number_to_wrds(beers_left - 1)
			plural_bottle = (beers_left == 0 or beers_left > 1) ? "bottles" : "bottle"
			plural_bottle2 = (beers_left -1 == 0 or beers_left-1 > 1) ? "bottles" : "bottle"

			puts "#{count_string} #{plural_bottle} of beer on the wall,\n"
			puts "#{count_string} #{plural_bottle} of beer,\nTake one down, pass it around,\n#{remain_string} #{plural_bottle2} of beer on the wall.\n"


		end
	end
end