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

  def initialize(num)
    num = 99 if num > 99
    num = 0 if num < 0
    @num = num
  end
  # Sets the number you input to the number you input, or if it's over 99 it sets to 99, if under 0 sets to 0.

  def num_word
    single = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
    teens = ["Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
    tens = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    word = single[@num-1] if @num <= 10 # If @num is <=10 it is in the single array in that index -1 because of the 0 offset.
    word = teens[@num-11] if @num >= 11 && @num < 20 # If @num is bigger than 11 and smaller than 20 it is in the teens array at that number -11 because of the offset.
    if @num >= 20
      small = @num % 10
      big = @num / 10
      if small != 0
          word = tens[big-2] + "-" + single[small-1].downcase
        else word = tens[big-2]
      end
    end
    @word = word
  end

  def print_song
    if @num == 0
      return ""
    elsif @num == 1
     puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
    else
      while @num > 1
        puts "#{num_word} bottles of beer on the wall,\n#{num_word} bottles of beer,\nTake one down, pass it around,"
         @num -= 1
         break if @num == 1
        puts "#{num_word} bottles of beer on the wall."
      end
       puts "One bottle of beer on the wall.\nOne bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall."
    end
  end
end