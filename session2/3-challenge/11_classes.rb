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
  attr_accessor 'bottles'
   
 def initialize(number)
     @bottles = number
     @bottles = 0 if number < 0
     @bottles = 99 if number >= 100
   end
   
   def remove_array_element(element)
     element.delete(element)
   end
   
   def number_to_word(number)
     numbers = {
       90 => "ninety",
       80 => "eighty",
       70 => "seventy",
     60 => "sixty",
       50 => "fifty",
       40 => "forty",
       30 => "thirty",
       20 => "twenty",
       19 => "nineteen",
       18 => "eighteen",
       17 => "seventeen",
       16 => "sixteen",
       15 => "fifteen",
       14 => "fourteen",
       13 => "thirteen",
       12 => "twelve",
       11 => "eleven",
       10 => "ten",
       9 => "nine",
       8 => "eight",
       7 => "seven",
       6 => "six",
       5 => "five",
       4 => "four",
       3 => "three",
       2 => "two",
       1 => "one"
    }
       word = ""
     numbers.each do |int, name|
       if number == 0 
         return word
       elsif number.to_s.length == 1 && number/int > 0
         return word + "#{name} "
       elsif number < 100 && number/int > 0
         return word + "#{name} " if number % int == 0
         return word + "#{name}-" + number_to_word(number%int)
      end
     end
   end
   
   def print_song
     while @bottles >= 0
       if @bottles == 0
         print ""
       elsif @bottles == 1
         puts number_to_word(@bottles).capitalize + "bottle of beer on the wall,"
         puts number_to_word(@bottles).capitalize + "bottle of beer,"
         puts "Take one down, pass it around,"
         puts "Zero bottles of beer on the wall."
       else
         puts number_to_word(@bottles).capitalize + "bottles of beer on the wall,"
         puts number_to_word(@bottles).capitalize + "bottles of beer,"
         puts "Take one down, pass it around,"
         if @bottles - 1 == 1
           puts number_to_word(@bottles -1).capitalize + "bottle of beer on the wall."
         else
           puts number_to_word(@bottles -1).capitalize + "bottles of beer on the wall." 
         end
       end
       
       @bottles -= 1
     end
   end
 end
 
 song = BeerSong.new 100
 puts song.print_song