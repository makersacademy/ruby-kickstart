
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
  attr_accessor :beers
  #sets a reader and writor method for beers

  def initialize(beers)
  	#initialize method that takes beers as its argument
    beers = 0  if beers < 0
    #if the number of beers is less than zero, sets number to zero
    beers = 99 if beers > 99
    #if number of beers is more than 99, sets number to 99
    self.beers = beers
    #sets the number of beers to a class variable
  end

  def print_song
  	#print_song method
    beers.downto 1 do |i|
    	#for each number of beers down to one, call the print_stanza method
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
    	#if the number of beers is 0, creates a new instance of the String class
      String.new
    else
    	#otherwise, puts song, which calls the translate method on number of beers, and the bottle method
      puts "#{translate n} #{bottle n} of beer on the wall,",
      "#{translate n} #{bottle n} of beer,",
      "Take one down, pass it around,",
      "#{translate n - 1} #{bottle n-1} of beer on the wall."

    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19
    	#if the number is between 0 to nineteen, uses the number to search the array of words for the matching index and uotputs the corresponding word
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
    	#if the number is divisible by ten with no remainder, does the same as above
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end




=begin
class BeerSong
	attr_accessor :bottles

	def initialize(bottles)
		if bottles > 99
			bottles = 99
		elsif bottles < 0
			bottles = 0
		end
		self.bottles = bottles
	end

	def poem(num)
		if num == 0
			String.new
		else
		puts "#{words_to_numbers num} #{plurals num} of beer on the wall,\n#{words_to_numbers num} #{plurals num} of beer,\nTake one down, pass it around,\n#{words_to_numbers num-1} #{plurals num-1} of beer on the wall.\n"
    	end
	end

	def print_song
		bottles.downto 1 do |botts|
			poem botts
		end
	end

	def plurals(num)
		if num == 1
			plural = "bottle"
		else
			plural = "bottles"
		end
	end

	def words_to_numbers(num)
		littleuns = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		biguns = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
			if (num < 20) && (num >= 0)
		littleuns[num].capitalize
			elsif num % 10 == 0
		tens = num/10
		biguns[tens].capitalize
			else
		ten = num / 10
		rem = num % 10 
		first = biguns[ten]
		second = littleuns[rem]
		"#{first.capitalize}-#{second.capitalize}"
		end
	end

end
=end

test = BeerSong.new(100)
test.print_song





