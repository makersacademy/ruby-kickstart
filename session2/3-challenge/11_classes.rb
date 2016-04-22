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

  def initialize(num_of_beers)
    num_of_beers = 0 if num_of_beers < 0
    num_of_beers = 99 if num_of_beers > 99
    @number_of_beers = num_of_beers
  end

  def num_conversion(num)
    singles = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "zero"]
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    if num < 10
      singles[num-1]
    elsif num >= 10 && num < 20
      teens[num - 10]
    else
      split_num = num.to_s.split("")
      if split_num[1].to_i == 0
        tens[split_num[0].to_i - 2]
      else
        "#{tens[split_num[0].to_i - 2]}-#{singles[split_num[1].to_i - 1]}"

      end
    end
  end

  def print_songs(num)
    x = num
    until x == 0 do
      if x == 1
        bottle = num_conversion(x)
        less_bottle = num_conversion(x - 1)
        puts "#{bottle.capitalize} bottle of beer on the wall,"
        puts "#{bottle.capitalize} bottle of beer,"
        puts "Take one down, pass it around,"
        puts "#{less_bottle.capitalize} bottles of beer on the wall."
        x = x - 1
      elsif x == 2
        bottle = num_conversion(x)
        less_bottle = num_conversion(x - 1)
        puts "#{bottle.capitalize} bottles of beer on the wall,"
        puts "#{bottle.capitalize} bottles of beer,"
        puts "Take one down, pass it around,"
        puts "#{less_bottle.capitalize} bottle of beer on the wall."
        x = x - 1
      else
        bottle = num_conversion(x)
        less_bottle = num_conversion(x - 1)
        puts "#{bottle.capitalize} bottles of beer on the wall,"
        puts "#{bottle.capitalize} bottles of beer,"
        puts "Take one down, pass it around,"
        puts "#{less_bottle.capitalize} bottles of beer on the wall."
        x = x - 1
      end
    end
  end

  def print_song
    print_songs(@number_of_beers)
  end

end
