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

	attr_accessor :n_bottles # so we can access this variable

	def initialize(n_bottles) # everytime a new instance is made of the class, it is rebooted with n-bottles e.g. corona = BeerSong.new (7)
		n_bottles = 0 if n_bottles < 0
		n_bottles = 99 if n_bottles > 99
		@n_bottles = n_bottles
	end

	def in_words(n_bottles) # hash for the numbers -> conversion
  		numbers_to_words = {
      	90 => "ninety",
      	80 => "eighty",
      	70 => "seventy",
      	60 => "sixty",
      	50 => "Fifty",
      	40 => "forty",
      	30 => "thirty",
      	20 => "twenty",
      	19=>"nineteen",
      	18=>"eighteen",
      	17=>"seventeen", 
      	16=>"sixteen",
      	15=>"fifteen",
      	14=>"fourteen",
      	13=>"thirteen",              
      	12=>"twelve",
      	11 => "eleven",
      	10 => "ten",
      	9 => "nine",
      	8 => "eight",
      	7 => "seven",
      	6 => "six",
      	5 => "five",
      	4 => "four",
      	3 => "three",
      	2 => "two",
      	1 => "one"
    	}

   		words = "" # an empty string to add the words


		if n_bottles > 20 && n_bottles.to_s[-1].to_i != 0 # if n_bottles is larger than 20, i.e. needs two numbers -> word conversions and the last digit does not equal 0 (as then there is just one number -> conversion)
			numbers_to_words.each do |number, word| # iterate through each key-value pair of the hash
				if n_bottles.to_s[-1].to_i == number # if the last digit of n_bottles matches the key (number), then add the value (word) to @string
					words << word + " "
					n_bottles -= n_bottles.to_s[-1].to_i # then minus the last digit from the overall total of @n_bottles, to get a new value for @n_bottles
				end
			end
		end

		numbers_to_words.each do |number, word| # iterate through each key-value pair of the hash
    		if n_bottles == number # now the value of @n_bottles will be a key of the hash
    			words << word 
    		end
		end

			if words.split.length == 2 # if the string contains two words (i.e they would have been added in reverse 'two twenty')
				words = words.split.reverse.join("-").capitalize # convert into array, reverse them, and join them back to a string (i.e twenty-two) and capitalize (ie. Twenty-two)
			end

			if words.split.length ==1
				words.capitalize! # capitalize if one word
			end
			words
		end	



	def print_song
		while n_bottles > 2 # loop the following until n == 3
			(n_bottles).downto(3) do |x| 
				puts "#{in_words(n_bottles)} bottles of beer on the wall," # calling the method in_words(n_bottles)
				puts "#{in_words(n_bottles)} bottles of beer,"
				puts "Take one down, pass it around,"
				puts "#{in_words(n_bottles-1)} bottles of beer on the wall."
				@n_bottles -= 1 # @n_bottles value decreases by 1 and loops back to reinsert the new value
			end
		end
			if n_bottles === 2
				puts "Two bottles of beer on the wall,"
				puts "Two bottles of beer,"
				puts "Take one down, pass it around,"
				puts "One bottle of beer on the wall."

				puts "One bottle of beer on the wall,"
				puts "One bottle of beer,"
				puts "Take one down, pass it around,"
				puts "Zero bottles of beer on the wall."
			elsif n_bottles == 0
				puts ""
			else
				puts "One bottle of beer on the wall,"
				puts "One bottle of beer,"
				puts "Take one down, pass it around,"
				puts "Zero bottles of beer on the wall."
			end
	end

end

