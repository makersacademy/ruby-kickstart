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
#11





class BeerSong  
	attr_accessor :beers

 	def initialize(beers)
     self.beers = beers
  	end


	def print_song
			bottlecount = beers

			letters_to_numbers = {
				 		"Ninety" => 90,
				 		"Eighty" => 80,
				 		"Seventy" => 70,
				 		"Sixty" => 60,
				 		"Fifty" => 50,
				 		"Fourty" => 40,
				 		"Thirty" => 30,
				 		"Twenty" => 20,
				 		"Nineteen" => 19,
				 		"Eightteen" => 18,
				 		"Seventeen" => 17,
				 		"Sixteen" => 16,
				 		"Fifteen" => 15,
				 		"Fourteen" => 14,
				 		"Thirteen" => 13,
				 		"Twelve" => 12,
				 		"Eleven" => 11,
				 		"Ten" => 10,
				 		"nine" => 9,
				 		"eight" => 8,
				 		"seven" => 7,
				 		"six" => 6,
				 		"five" => 5,
				 		"four" => 4,
				 		"three" => 3,
				 		"two" => 2,
				 		"one" => 1
			}

			while bottlecount > 1
				 bottlecount_primerA = bottlecount.to_s
				 bottlecount_primerB = bottlecount_primerA[0].to_i*10
				 bottlecount_primerC = bottlecount_primerA[1].to_i
							 		
				if bottlecount > 19 && bottlecount_primerC != 0
					bottlecount_tens = letters_to_numbers.key(bottlecount_primerB)
					bottlecount_singels = letters_to_numbers.key(bottlecount_primerC)
					bottlecount_text = "#{bottlecount_tens}-#{bottlecount_singels}"
				elsif bottlecount > 19 && bottlecount_primerC == 0
					bottlecount_tens = letters_to_numbers.key(bottlecount_primerB)
					bottlecount_text = "#{bottlecount_tens}"
				elsif bottlecount > 9 && bottlecount < 20 
				bottlecount_text = letters_to_numbers.key(bottlecount)
				end

				puts "#{bottlecount_text} bottles of beer on the wall,"
				puts "#{bottlecount_text} bottles of beer,"
				puts "Take one down, pass it around,"		
				bottlecount -= 1
			end

			puts "one bottle of beer on the wall,"
			puts "one bottle of beer,"
			puts "Take one down, pass it around,"	
			puts "zero bottles of beer on the wall"
	end
end

bottleman = BeerSong.new '99'
bottleman.print_song



