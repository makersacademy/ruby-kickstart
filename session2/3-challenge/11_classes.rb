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

#I looked through the model answer twice and fully understood it. I managed to repeat the WHOLE code from memory below!
	
	attr_accessor :beers

	# 1. Initialize beers
	def initialize beers
		beers = 0 if beers < 0
		beers = 99 if beers > 99
		self.beers = beers	
	end

	#2. Method with iterator counting down to 1
	def print_song
		beers.downto 1 do |n|
			stanza n
		end
	end

	#3. Method to call the stanzas
	def stanza n
		if n.zero?
			String.new #why not just return? or break?
		else #print stanza with calls to translate methods
			puts  "#{trans n}" + "#{bottle n}" + " of beer on the wall,",
				  	"#{trans n}" + "#{bottle n}" + " of beer,",
				  	"Take one down, pass it around,",
				  	"#{trans n-1}" + "#{bottle n-1}" + " of beer on the wall."
		end
	end

	#4. Method to determine bottles or bottle
	def bottle n
		if n == 1
			" bottle"
		else
			" bottles"
		end
	end

	#5. Method to translate the numbers into words
	def trans n #has a recusive call to itself 
		if n >= 0 && n <= 19 # define 0-19
			%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
		elsif n%10 == 0 # tens
			%w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
		else # all other numbers - First part works out via recursion the tens, second part works out the singles with the remainder
			"#{trans n/10*10}" + "-" + "#{trans n%10}"
		end.capitalize
	end
end

