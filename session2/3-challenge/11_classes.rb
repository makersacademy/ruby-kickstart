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
	def initialize(beers)
		@beers = beers
		if @beers == 0  
			@beers = ""
		elsif beers < 0 
			 @beers = ""
		elsif @beers > 99 
			 @beers = 99 
		end
	end

	def print_song
		if @beers == ""
			puts ""
		else
			while @beers > -1
				if 	@beers == 1
					puts "#{BeerSong.text_nums(@beers).capitalize} bottle of beer on the wall,"
					puts "#{BeerSong.text_nums(@beers).capitalize} bottle of beer,"
					puts "Take one down, pass it around,"
				elsif @beers == 0
					puts "#{BeerSong.text_nums(@beers).capitalize} bottles of beer on the wall."
				else
					puts "#{BeerSong.text_nums(@beers).capitalize} bottles of beer on the wall,"
					puts "#{BeerSong.text_nums(@beers).capitalize} bottles of beer,"
					puts "Take one down, pass it around,"
				end
				@beers -= 1
			end
		end


	end

	private

		@nums = {
			0 => "zero",
			1 => "one",
			2 => "two",
			3 => "three",
			4 => "four",
			5 => "five",
			6 => "six",
			7 => "seven",
			8 => "eight",
			9 => "nine",
			10 => "ten",
			11 => "eleven",
			12 => "twelve",
			13 => "thirteen",
			14 => "fourteen",
			15 => "fifteen",
			16 => "sixteen",
			17 => "seventeen",
			18 => "eighteen",
			19 => "nineteen",
			20 => "twenty",
			21 => "twenty-one",
			22 => "twenty-two",
			23 => "twenty-three",
			24 => "twenty-four",
			25 => "twenty-five",
			26 => "twenty-six",
			27 => "twenty-seven",
			28 => "twenty-eight",
			29 => "twenty-nine",
			30 => "thirty",
			31 => "thirty-one",
			32 => "thirty-two",
			33 => "thirty-three",
			34 => "thirty-four",
			35 => "thirty-five",
			36 => "thirty-six",
			37 => "thirty-seven",
			38 => "thirty-eight",
			39 => "thirty-nine",
			40 => "forty",
			41 => "forty-one",
			42 => "forty-two",
			43 => "forty-three",
			44 => "forty-four",
			45 => "forty-five",
			46 => "forty-six",
			47 => "forty-seven",
			48 => "forty-eight",
			49 => "forty-nine",
			50 => "fifty",
			51 => "fifty-one",
			52 => "fifty-two",
			53 => "fifty-three",
			54 => "fifty-four",
			55 => "fifty-five",
			56 => "fifty-six",
			57 => "fifty-seven",
			58 => "fifty-eight",
			59 => "fifty-nine",
			60 => "sixty",
			61 => "sixty-one",
			62 => "sixty-two",
			63 => "sixty-three",
			64 => "sixty-four",
			65 => "sixty-five",
			66 => "sixty-six",
			67 => "sixty-seven",
			68 => "sixty-eight",
			69 => "sixty-nine",
			70 => "seventy",
			71 => "seventy-one",
			72 => "seventy-two",
			73 => "seventy-three",
			74 => "seventy-four",
			75 => "seventy-five",
			76 => "seventy-six",
			77 => "seventy-seven",
			78 => "seventy-eight",
			79 => "seventy-nine",
			80 => "eighty",
			81 => "eighty-one",
			82 => "eighty-two",
			83 => "eighty-three",
			84 => "eighty-four",
			85 => "eighty-five",
			86 => "eighty-six",
			87 => "eighty-seven",
			88 => "eighty-eight",
			89 => "eighty-nine",
			90 => "ninety",
			91 => "ninety-one",
			92 => "ninety-two",
			93 => "ninety-three",
			94 => "ninety-four",
			95 => "ninety-five",
			96 => "ninety-six",
			97 => "ninety-seven",
			98 => "ninety-eight",
			99 => "ninety-nine"
		}
	def self.text_nums arg
		@nums[arg]
	end
end

