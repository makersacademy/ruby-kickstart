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
  def initialize(beer_num)
    @beer_num = beer_num
    if @beer_num > 99
      @beer_num = 99
    elsif @beer_num < 0
      @beer_num = 0
    end
  end

  def convert_number
    numbers = {
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
      40 => "Forty",
      50 => "Fifty",
      60 => "Sixty",
      70 => "Seventy",
      80 => "Eighty",
      90 => "Ninety"
    }

    if numbers.has_key?(@beer_num)
      text_num = numbers[@beer_num]
    else
      unit = @beer_num % 10
      tens = @beer_num - unit
      text_num =  numbers[tens] + "-" + numbers[unit].downcase
    end
    return text_num
  end

  def print_song
    while @beer_num > 0
      text_num = convert_number()
      suffix = @beer_num != 1 ? "s" : ""
      puts "#{text_num} bottle#{suffix} of beer on the wall,"
      puts "#{text_num} bottle#{suffix} of beer,"
      @beer_num -= 1
      suffix = @beer_num != 1 ? "s" : ""
      text_num = convert_number()
      puts "Take one down, pass it around,"
      puts "#{text_num} bottle#{suffix} of beer on the wall."
    end
  end
end
