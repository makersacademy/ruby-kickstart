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

attr_accessor :number

def initialize (number)
	
	case number
	when number < 0
		@number = 0
    when number > 99
  		 @number = 99
	when 1..99
		@number = number

	end
end

def pluralize (a,i)

	(a += "s") if i != 1 
		
	return a
end


 def translate(n)

    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
     else  "#{%w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]}-#{%w(zero one two three four five six seven eight nine n % 10) [n%10]}"
    end.capitalize
 end


def print_song()
	i = @number
	while i > 0 

		puts "#{translate(i)}  #{pluralize("bottle", i)} of beer on the wall," ,
 			"#{translate(i)} #{pluralize("bottle", i)} of beer,"				,
 			"Take one down, pass it around,"  ,
 			"#{translate(i-1)} #{pluralize("bottle", i-1)} of beer on the wall.",
 			""

	i -= 1
	end
end
end
	
new_song = BeerSong.new(3)
new_song.print_song()
