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
  def initialize(number_bottles)
    if number_bottles < 0
    @number_bottles = 0
  elsif number_bottles > 99
    @number_bottles = 99
  else
    @number_bottles = number_bottles
  end
  end

  def spell_number(number)
    decinity = ""
    if number / 10 > 0
      decinity = "Twenty" if number / 10 == 2
      decinity = "Thirty" if number / 10 == 3
      decinity = "Fourthy" if number / 10 == 4
      decinity = "Fifty" if number / 10 == 5
      decinity = "Sixty" if number / 10 == 6
      decinity = "Seventy" if number / 10 == 7
      decinity = "Eighty" if number / 10 == 8
      decinity = "Ninety" if number / 10 == 9
  else
    number = "Eleven" if number == 11
    number = "Twelve" if number == 12
    number = "Thirteen" if number == 13
    number = "Fourteen" if number == 14
    number = "Fifteen" if number == 15
    number = "Sixteen" if number == 16
    number = "Seventeen" if number == 17
    number = "Eighteen" if number == 18
    number = "Nineteen" if number == 19
  end
  if number / 10 > 0
    number = decinity + "-one" if number % 10 == 1
    number = decinity + "-two" if number % 10 == 2
    number = decinity + "-three" if number % 10 == 3
    number = decinity + "-four" if number % 10 == 4
    number = decinity + "-five" if number % 10 == 5
    number = decinity + "-six" if number % 10 == 6
    number = decinity + "-seven" if number % 10 == 7
    number = decinity + "-eight" if number % 10 == 8
    number = decinity + "-nine" if number % 10 == 9
  end
end

  def print_song
    if @number_bottles == 0
    else @number_bottles != 0
    (@number_bottles-1).times do
    puts "#{spell_number(@number_bottles)} bottles of beer on the wall,"
    puts "#{spell_number(@number_bottles)} bottles of beer,"
    puts "Take one down, pass it around,"
    puts "#{spell_number(@number_bottles-1)} bottles of beer on the wall."
    end
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  end
  end


end
