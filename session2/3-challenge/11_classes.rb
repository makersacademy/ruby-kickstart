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

	attr_accessor 'beers'

 	def initialize(beers)
 		beers = 0  if beers < 0
    	beers = 99 if beers > 99
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
				 "Forty" => 40,
				 "Thirty" => 30,
				 "Twenty" => 20,
				 "Nineteen" => 19,
				 "Eighteen" => 18,
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
				 "one" => 1 }

		    if bottlecount == 0
			else  
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
					elsif bottlecount < 10 
						bottlecount_text = letters_to_numbers.key(bottlecount).capitalize
					else 
						bottlecount_text = letters_to_numbers.key(bottlecount)
					end


					puts "#{bottlecount_text} bottles of beer on the wall,"
					puts "#{bottlecount_text} bottles of beer,"
					puts "Take one down, pass it around,"		
					
					bottlecount -= 1

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
					elsif bottlecount < 10 
						bottlecount_text = letters_to_numbers.key(bottlecount).capitalize
					else 
						bottlecount_text = letters_to_numbers.key(bottlecount)
					end

					if bottlecount > 1
					puts "#{bottlecount_text} bottles of beer on the wall."
					else
					puts "#{bottlecount_text} bottle of beer on the wall."
					end


				end

					puts "One bottle of beer on the wall,"
					puts "One bottle of beer,"
					puts "Take one down, pass it around,"	
					puts "Zero bottles of beer on the wall."
			end
	end
end	

