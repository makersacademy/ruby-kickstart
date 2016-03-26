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
    
def initialize(beer)
    @beer = beer
    if @beer < 0
      @beer = 0
    elsif @beer > 99
      @beer = 99
    end
end

def englishNumber(number)
  if number < 0 # no negative numbers
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "Zero"
  end
  
  numString = "" # This is the string it will return.
  
  onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  
  # "Left" is how much of the number we still have left to write out.
  # "Write" is the part we are writing out right now.
  
  left = number
  write = left/10 # how many tens left to write out.
  left = left - write * 10 # subtract off the tens.
  
  if write > 0
    if ((write == 1) and (left > 0))
	# we need to make a special exception for the teens.
	numString = numString + teenagers[left - 1]
	# The "-1" is because teenagers[3] is "fourteen" not "thirteen" (Place orders)
	# we already took care of the digit in ones place so we have nothing more to write.
	  
	  left = 0
	else
	  numString = numString + tensPlace[write - 1]
	  # The "-1" is because tensPlace[3] is "Forty" not "Thirty".
	end
	
	if left > 0 # so we don't write "SixtyFour"
	  numString = numString + "-"
	end
  end
	 
  write = left # how many unites left to write out/
  left = 0 # substract off those.
  
  if write > 0
    numString = numString + onesPlace[write - 1]
	# The "-1" is because onesPlace[3] is "Four" not "Three".
	end

  # Now we just return "numString".
  numString
end

def plural(beer)
  @beer == 1 ? "bottle" : "bottles"
end

def print_song
    @beer.downto(1) { |x| lyrics x }
end

def lyrics(beer)
  puts "#{englishNumber(@beer)} #{plural(@beer)} of beer on the wall,".capitalize
  puts "#{englishNumber(@beer)} #{plural(@beer)} of beer,".capitalize
  puts "Take one down, pass it around,"
  @beer -= 1
  puts "#{englishNumber(@beer)} #{plural(@beer)} of beer on the wall.".capitalize
end
end
