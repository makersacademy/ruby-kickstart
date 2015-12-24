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
  attr_accessor 'num_bottles'

  def initialize(num_bottles)
    num_bottles = 0 if num_bottles < 0
    num_bottles = 99 if num_bottles > 99
    self.num_bottles = num_bottles
  end

  def print_song

    num_bottles.downto 1 do |n|
    	puts  "#{num_bottles_str n} #{bottles n} of beer on the wall,"   ,
            "#{num_bottles_str n} #{bottles n} of beer,"               ,
    	      "Take one down, pass it around,"            ,
            "#{num_bottles_str n-1} #{bottles n-1} of beer on the wall."
    end

  end

  def bottles(n)
    n == 1 ? "bottle" : "bottles"
  end

  def num_bottles_str(n)
    single_nums = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "tewelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_nums = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    if n>=0 && n<20
      single_nums[n].capitalize
    elsif n%10==0
      tens_nums[n/10 -1].capitalize
    else
      "#{tens_nums[(n/10-1).to_i]}-#{single_nums[n%10]}".capitalize
    end
  end

end
