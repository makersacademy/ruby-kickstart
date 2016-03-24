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
	attr_accessor 'numbottles'

	def initialize(numbottles)
		@numbottles = numbottles.to_i

		if @numbottles < 0
		   @numbottles = 0
		elsif @numbottles > 99
		   @numbottles = 99
		elsif @numbottles == ''
			return''
		end

	end
	
	def print_song
		
		while numbottles > 0 
			if numbottles == 1
				engNumForSong = englishNumber(numbottles)
				puts engNumForSong + ' bottle of beer on the wall,'
				puts engNumForSong + ' bottle of beer,'
				puts 'Take one down, pass it around,'
				@numbottles -= 1
				puts 'Zero bottles of beer on the wall.'
				return
			end
				engNumForSong = englishNumber(numbottles)

				puts engNumForSong + ' bottles of beer on the wall,'
				puts engNumForSong + ' bottles of beer,'
				puts 'Take one down, pass it around,'

				@numbottles -= 1
				engNumForSong = englishNumber(numbottles)
				  if numbottles == 1 then 
				  	puts 'One bottle of beer on the wall.'
				  else 
				  	puts engNumForSong + ' bottles of beer on the wall.'
				  end

		end

	end


	def englishNumber(number)
	  
	englishNumber = []

		hashTens = {
		  "20" => "twenty", "30" => "thirty", "40" => "forty", "50" => "fifty", "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety"
		}
		hashUnderTen = {
		  "0" => "zero", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight","9" => "nine"
		}
		hashUnderTwenty = {
		  "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"
		}

		  if number == '0'  
		    englishNumber << 'zero'
		    return englishNumber
		  end

		  if number < 10
		    localnumber = number.to_s
		    englishNumber <<  hashUnderTen[localnumber]
		  end

		  if number >= 10 && number <= 19
		    localnumber = number.to_s
		    englishNumber << hashUnderTwenty[localnumber]
		  end

		  if number >= 20
		    splitDigits = number.to_s.split(//)
		    tenDigit = ((splitDigits[0].to_i) * 10).to_s  
		    singleDigit = (splitDigits[1].to_i).to_s
		    englishNumber << hashTens[tenDigit]
		      if singleDigit != '0' then
		        englishNumber <<  hashUnderTen[singleDigit]
		      end
		  end
		  
	return englishNumber.join('-').capitalize

	end

end

BeerSong.new(100).print_song
