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
	attr_accessor :bottles

	def initialize(bottles)
    	bottles = 0  if bottles < 0
    	bottles = 99 if bottles > 99
    	self.bottles = bottles
  	end

	def print_song
		bottles.downto(1) do |num|
			lyric num
		end
	end
		
	def plural(n)

		if n == 1
			'bottle'
		else
			'bottles'
		end
	end


	def lyric (n)
		if n.zero?
			String.new
		else
			puts "#{translate n} #{plural n} of beer on the wall,",
           "#{translate n} #{plural n} of beer,"                  ,
           "Take one down, pass it around,"                       ,
           "#{translate n - 1} #{plural n -1} of beer on the wall."
        end
    end 

    def translate(n)
    	if 0 <= n && n <= 19
      		%w(Zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen)[n]
    	elsif n % 10 == 0
      		%w(Zero Ten Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety)[n/10]
    	else
      		"#{translate n/10*10}-#{translate n%10}".downcase
    	end.capitalize
  	end
end




