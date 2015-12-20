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
  attr_reader :bottles

  def initialize(bottles)
    if bottles > 99
      @bottles = 99
    elsif bottles < 0
      @bottles = 0
    else
      @bottles = bottles
    end
  end

  @@capitals = {
  0 => "Zero",
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four",
  5 => "Five",
  6 => "Six",
  7 => "Seven",
  8 => "Eight",
  9 => "Nine",
  10 => "Ten",
  11 => "Eleven",
  12 => "Twelve",
  13 => "Thirteen",
  14 => "Fourteen",
  15 => "Fifteen",
  16 => "Sixteen",
  17 => "Seventeen",
  18 => "Eighteen",
  19 => "Nineteen",
  20 => "Twenty",
  30 => "Thirty",
  40 => "Fourty",
  50 => "Fifty",
  60 => "Sixty",
  70 => "Seventy",
  80 => "Eighty",
  90 => "Ninety"
}

@@digits = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine"
}

def num2words(num)
  return @@capitals[num] if num <= 20
  ones = num % 10
  tens = num - ones
  if ones == 0
    @@capitals[tens]
  else
    @@capitals[tens]+'-'+@@digits[ones]
  end
end

  def print_song
    @bottles.downto(1) do |bottles_left|
      puts "#{num2words(bottles_left)} #{bottles_left == 1 ? "bottle" : "bottles"} of beer on the wall,"
      puts "#{num2words(bottles_left)} #{bottles_left == 1 ? "bottle" : "bottles"} of beer,"
      puts "Take one down, pass it around,"
      puts "#{num2words(bottles_left-1)} #{(bottles_left-1) == 1 ? "bottle" : "bottles"} of beer on the wall."

    end
  end
end

bs = BeerSong.new 32
bs.print_song
