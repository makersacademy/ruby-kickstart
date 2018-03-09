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

  @@to_words = {
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
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
  }


  def initialize(bottles)
    @bottles = bottles.to_i if bottles.to_i >= 0 && bottles.to_i <= 99
    @bottles = 0 if bottles.to_i < 0
    @bottles = 99 if bottles.to_i > 99
  end


  public def print_song
    if @bottles == 0
      print ""
    else
      i = @bottles
      while i.to_i > 0 do
        print "#{convert_number(i)} #{i == 1 ? "bottle" : "bottles"} of beer on the wall,\n#{convert_number(i)} #{i == 1 ? "bottle" : "bottles"} of beer,\nTake one down, pass it around,\n#{convert_number(i-1)} #{(i-1) == 1 ? "bottle" : "bottles"} of beer on the wall.\n"
        i -= 1
      end
      # print "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
    end

  end

  def convert_number(num)
    if num >= 0 && num <= 20
      @@to_words[num].capitalize
    else
      if num % 10 == 0
        @@to_words[num].capitalize
      else
        @@to_words[num - (num % 10)].capitalize + "-" + @@to_words[num % 10]
      end
    end
  end

  # #{bottles_num} bottles of beer on the wall,
  # Ninety-nine bottles of beer,
  # Take one down, pass it around,
  # Ninety-eight bottles of beer on the wall.

end