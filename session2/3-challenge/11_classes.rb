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

#create a loop that takes a new number each iteration - downto zero
#change the integer into text using hash 
#split integers into an array, if the first one equals a certain number, write that out in text
#with a dash, unless there's only one number then write the other number
#store all possible combinations in a hash
#if number is less than 19 then just put the equivilant english number

class BeerSong 
 
attr_accessor :bottles

#when you call a new BeerSong object, it will initialize with the following
  def initialize(bottles)
  	bottles = 0 if bottles < 0
  	bottles = 99 if bottles > 99
  	@bottles = bottles
  	@single_nums = { 
	19 => "Nineteen",
	18 => "Eighteen",
	17 => "Seventeen",
	16 => "Sixteen",
	15 => "Fifteen",
	14 => "Fourteen",
	13 => "Thirteen",
	12 => "Twelve",
	11 => "Eleven",
	10 => "Ten",
	9 => "nine",
	8 => "eight",
	7 => "seven",
	6 => "six",
	5 => "five",
	4 => "four",
	3 => "three",
	2 => "two",
	1 => "one",
	0 => "Zero"
    }
    @big_nums = {
	9 => "Ninety",
	8 => "Eighty",
	7 => "Seventy",
	6 => "Sixty",
	5 => "Fifty",
	4 => "Forty",
	3 => "Thirty",
	2 => "Twenty"
    }
  end


  def print_song
  	@bottles.downto 1 do |n|
    if @bottles.zero?
      String.new
    else
  	puts "#{english_words(n)} #{bottle(n)} of beer on the wall,",
         "#{english_words(n)} #{bottle(n)} of beer,",
         "Take one down, pass it around,",
         "#{english_words(n-1)} #{bottle(n-1)} of beer on the wall."
     end
    end
  end

def english_words(bottles)
	if bottles <= 19
      @single_nums[bottles].capitalize
    elsif bottles % 10 == 0
      split_number = bottles.to_s.split('').map(&:to_i)
      @big_nums[split_number[0]]
    else
      split_number = bottles.to_s.split('').map(&:to_i)
      "#{@big_nums[split_number[0]]}-#{@single_nums[split_number[1]]}"
    end
end

 def bottle(n)
    if n == 1
     'bottle' 
    else 
     'bottles' 
    end
 end

end


