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
  def initialize(starting_bottles)
    @bottles = starting_bottles
    @bottles = 0 if starting_bottles < 0
    @bottles = 99 if starting_bottles > 99

  end
  def print_song
    while @bottles >= 2 do
      initial_number = number_to_human(@bottles).capitalize
      reduced_number = number_to_human(@bottles - 1).capitalize
      puts "#{initial_number} bottles of beer on the wall,"
      puts "#{initial_number} bottles of beer,"
      puts "Take one down, pass it around,"
      if (@bottles - 1) > 1
        puts "#{reduced_number} bottles of beer on the wall."
      else
        puts "One bottle of beer on the wall."
      end

      @bottles -= 1
    end
    if @bottles == 1
      puts "One bottle of beer on the wall,"
      puts "One bottle of beer,"
      puts "Take one down, pass it around,"
      puts "Zero bottles of beer on the wall."
    end
  end
end

def number_to_human(number)

  numbers = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty" , 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety" }

  return numbers[number] if numbers.include?(number)

  number_of_ones = number % 10
  number_of_tens = number - number_of_ones

  "#{numbers[number_of_tens]}-#{numbers[number_of_ones]}"
end



song = BeerSong.new 2
song.print_song





