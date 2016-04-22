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

	def initialize (number)

		@botNum = number.to_i

		@botNum = 99 if number > 99

		@botNum = 0 if number < 0

	end

	attr_accessor "botNum"

	private

	def bottles number
  		if number < 0  # No negative numbers.
	    	return 'Please enter a number that isn\'t negative.'
  		end
  		if number == 0
		    return 'Zero'
	  	end

	  	# No more special cases! No more returns!

  		numString = ''  # This is the string we will return.

	  	onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  		tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  		teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  		# "left" is how much of the number we still have left to write out.
  		# "write" is the part we are writing out right now.
  		# write and left... get it?  :)
  		left  = number

  		write = left/1000000000000          # How many hundreds left to write out?
  		left  = left - write*1000000000000  # Subtract off those hundreds.

  		if write > 0
	    	# Now here's a really sly trick:
    		trillions = bottles write
    		numString = numString + trillions + ' trillion'
    		if left > 0
	      		# So we don't write 'two hundredfifty-one'...
      			numString = numString + ' '
    		end
  		end

  		write = left/1000000000          # How many hundreds left to write out?
  		left  = left - write*1000000000  # Subtract off those hundreds.

	  	if write > 0
    		# Now here's a really sly trick:
    		billions = bottles write
	   		numString = numString + billions + ' billion'
    		if left > 0
      			# So we don't write 'two hundredfifty-one'...
    	  		numString = numString + ' '
	    	end
  		end

  		write = left/1000000          # How many hundreds left to write out?
  		left  = left - write*1000000  # Subtract off those hundreds.

  		if write > 0
    		# Now here's a really sly trick:
    		millions = bottles write
    		numString = numString + millions + ' million'
    		if left > 0
	      		# So we don't write 'two hundredfifty-one'...
      			numString = numString + ' '
    		end
  		end

		write = left/1000          # How many hundreds left to write out?
  		left  = left - write*1000  # Subtract off those hundreds.

  		if write > 0
	    	# Now here's a really sly trick:
    		thousands = bottles write
    		numString = numString + thousands + ' thousand'
    		if left > 0
	      		# So we don't write 'two hundredfifty-one'...
      			numString = numString + ' '
	    	end
  		end

  		write = left/100          # How many hundreds left to write out?
  		left  = left - write*100  # Subtract off those hundreds.

  		if write > 0
	    	# Now here's a really sly trick:
    		hundreds  = bottles write
    		numString = numString + hundreds + ' hundred'
	    	# That's called "recursion". So what did I just do?
	    	# I told this method to call itself, but with "write" instead of
	    	# "number". Remember that "write" is (at the moment) the number of
	    	# hundreds we have to write out. After we add "hundreds" to
	    	# "numString", we add the string ' hundred' after it.
	    	# So, for example, if we originally called englishNumber with
	    	# 1999 (so "number" = 1999), then at this point "write" would
	    	# be 19, and "left" would be 99. The laziest thing to do at this
	    	# point is to have englishNumber write out the 'nineteen' for us,
	    	# then we write out ' hundred', and then the rest of
	    	# englishNumber writes out 'ninety-nine'.

    		if left > 0
	      		# So we don't write 'two hundredfifty-one'...
    			numString = numString + ' '
	    	end
  		end

  		write = left/10          # How many tens left to write out?
  		left  = left - write*10  # Subtract off those tens.

  		if write > 0
		    if ((write == 1) and (left > 0))
      			# Since we can't write "tenty-two" instead of "twelve",	
      			# we have to make a special exception for these.
      			numString = numString + teenagers[left-1]
      			# The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      			# Since we took care of the digit in the ones place already,
      			# we have nothing left to write.
      			left = 0
    		else
      			numString = numString + tensPlace[write-1]
    	  	# The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
	    	end

    		if left > 0
      			# So we don't write 'sixtyfour'...
      			numString = numString + '-'
			end
  		end

	  	write = left  # How many ones left to write out?
  		left  = 0     # Subtract off those ones.

  		if write > 0
    		numString = numString + onesPlace[write-1]
    		# The "-1" is because onesPlace[3] is 'four', not 'three'.
  		end

  		# Now we just return "numString"...
  		numString.capitalize
	end

	public

	# puts "How many bottles are there?"
	
	# x = gets.chomp.to_i

	# puts "I can't sing about that!" if x < 1

	def print_song

		while @botNum >= 1 do

    		if @botNum > 2 || @botNum == 0

    			puts "#{bottles(@botNum)} bottles of beer on the wall,\n#{bottles(@botNum)} bottles of beer,\nTake one down, pass it around,\n#{bottles(@botNum-1)} bottles of beer on the wall."

    		elsif @botNum == 2

    			puts "#{bottles(@botNum)} bottles of beer on the wall,\n#{bottles(@botNum)} bottles of beer,\nTake one down, pass it around,\n#{bottles(@botNum-1)} bottle of beer on the wall."

    		elsif @botNum == 1

    			puts "#{bottles(@botNum)} bottle of beer on the wall,\n#{bottles(@botNum)} bottle of beer,\nTake one down, pass it around,\n#{bottles(@botNum-1)} bottles of beer on the wall."
    			
    		end


	    	@botNum -= 1

		end

	end

end