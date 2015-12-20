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
  attr_accessor 'num_of_beers'

  def initialize(num_of_beers)
    @num_of_beers = num_of_beers
  end

  def words (i)
    number = ""
      tens = i/10
      digits = i%10
      if  tens >= 2
        number << "twenty" if tens == 2
        number << "thirty" if tens == 3
        number << "forty" if tens == 4
        number << "fifty" if tens == 5
        number << "sixty" if tens == 6
        number << "seventy" if tens == 7
        number << "eighty" if tens == 8
        number << "ninety" if tens == 9
      end
      number << "-" if digits != 0 && i > 20
      if i < 10 || i > 20
        number << "one" if digits == 1
        number << "two" if digits == 2
        number << "three" if digits == 3
        number << "four" if digits == 4
        number << "five" if digits == 5
        number << "six" if digits == 6
        number << "seven" if digits == 7
        number << "eight" if digits == 8
        number << "nine" if digits == 9
      end
      number << "ten" if i == 10
      number << "eleven" if i == 11
      number << "twelve" if i == 12
      number << "thirteen" if i == 13
      number << "fourteen" if i == 14
      number << "fifteen" if i == 15
      number << "sixteen" if i == 16
      number << "seventeen" if i == 17
      number << "eighteen" if i == 18
      number << "nineteen" if i == 19
      return number
    end

  def print_song
    @num_of_beers = 0 if @num_of_beers < 0
    @num_of_beers = 99 if @num_of_beers > 99
    string = ""
    if @num_of_beers != 0
    @num_of_beers.downto(0) do |x|
      if x > 1
        string << "#{words(x).capitalize} bottles of beer on the wall,
#{words(x).capitalize} bottles of beer,
Take one down, pass it around,\n"
        if (x-1) == 1
          string << "One bottle of beer on the wall.\n"
        else
          string << "#{words(x -1).capitalize} bottles of beer on the wall.\n"
        end
      elsif x == 1
        string << "#{words(x).capitalize} bottle of beer on the wall,
#{words(x).capitalize} bottle of beer,
Take one down, pass it around,\n"
      else
        string << "Zero bottles of beer on the wall."
      end
    end
    end
    puts string
  end
end

