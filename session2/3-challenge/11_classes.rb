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
	def initialize(start)
		@start = start
		if @start > 99
			@start = 99
		end
	end
	def print_song
<<<<<<< HEAD
	  if @start <= 0
	  else
	  while @start > 1
	  	word = english(@start)
		puts "#{word} bottles of beer on the wall,", 
		"#{word} bottles of beer,",
 		"Take one down, pass it around,"
 		@start -= 1
 		word = english(@start)
 		if  @start > 1
 			puts "#{word} bottles of beer on the wall."
 		else
 			puts "#{word} bottle of beer on the wall."
 		end
 	  end
 		puts "One bottle of beer on the wall,",
		"One bottle of beer,",
		"Take one down, pass it around,",
		"Zero bottles of beer on the wall."
      end
	end

  def english(start)
	digits = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	teenies = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
	
	numbers = []
	numbers = start.to_s.chars.map {|x| x.to_i}

	if start > 9 && start < 20
		english = teenies[(start - 10)]
	elsif numbers.length == 2 && numbers[1] == 0
		english = tens[numbers[0]]			
	elsif numbers.length == 2
		english = tens[numbers[0]] + "-" + digits[numbers[1]]
	elsif numbers.length == 1
		english = digits[numbers[0]]
	end
	english.capitalize!
  end

end

song = BeerSong.new(99)
=======
	  until @start == 1
		puts "#{@start} bottles of beer on the wall,", 
		"#{@start} bottles of beer,", 
 		"Take one down, pass it around,",
 		"#{@start-1} bottles of beer on the wall.",
 		"...",
 		@start -= 1
	  end
 	  puts "One bottle of beer on the wall,",
 		"One bottle of beer,",
 		"Take one down, pass it around,",
 		"..."
 	  "Zero bottles of beer on the wall."
	end
end

song = BeerSong.new(5)
>>>>>>> 0718f30a89be639e676a2adeb890b6cb8525ba11
song.print_song