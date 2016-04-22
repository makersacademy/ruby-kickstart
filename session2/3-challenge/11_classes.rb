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
  def initialize(number)
    @number = number
  end


  def say_numbers(number)
    array_tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    array_singles = ["", "one", "two", "three", "four","five","six","seven","eight","nine", "Ten","Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]

    if number!= 1 && number < 20
      array_singles[number].capitalize
    elsif number% 10 == 0
      array_tens[number/10]
    else
      singles = number.to_s.slice(1)
      tens = number.to_s.slice(0)
      array_tens[tens.to_i] + "-" + array_singles[singles.to_i]
    end
  end

  def print_song
    if @number > 99
      @number = 99
    end
    if @number <1
      return ""
    end
    while @number > 2 do
      puts "#{say_numbers(@number)} bottles of beer on the wall,\n#{say_numbers(@number)} bottles of beer,\nTake one down, pass it around,\n#{say_numbers(@number-1)} bottles of beer on the wall."
      @number -=1
    end
    if @number == 2
        puts "#{say_numbers(@number)} bottles of beer on the wall,\n#{say_numbers(@number)} bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall."
      end
      puts"One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,"
      puts "Zero bottles of beer on the wall."
  end
end


