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
  
  def initialize(beers)
    @beers = beers
  end
  
  def number(num)
    p num
    digit = Array.new
    i = 0
    num.each {|x|
      p x
      digit[i] = x
      i += 1
    }
    p digit
    num_word = "zero" if num == 0
    num_word = "one" if num == 1
    num_word = "two" if num == 2
    num_word = "three" if num == 3
    num_word = "four" if num == 4
    num_word = "five" if num == 5
    num_word = "six" if num == 6
    num_word = "seven" if num == 7
    num_word = "eight" if num == 8
    num_word = "nine" if num == 9
    
    num_word = "ten" if num == 10
    num_word = "eleven" if num == 11
    num_word = "twelve" if num == 12
    num_word = "thirteen" if num == 13
    num_word = "fourteen" if num == 14
    num_word = "fifteen" if num == 15
    num_word = "sixteen" if num == 16
    num_word = "seventeen" if num == 17
    num_word = "eighteen" if num == 18
    num_word = "nineteen" if num == 19
    
    num_word
  end
  
  def print_song
    while @beers > 0
      input_number = number(@beers)
      puts "#{input_number} bottles of beer on the wall,"
      puts "#{input_number} bottles of beer,"
      puts "Take one down, pass it around,"
      @beers -= 1
      input_number = number(@beers)
      puts "#{input_number} bottles of beer on the wall."
      puts
    end
  end
  
end

yay = BeerSong.new 19
yay.print_song
