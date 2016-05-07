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
    if number > 99
      @number = 99
    elsif number < 0
      @number = 0
    else number
      @number = number
    end 
  end

  def i_to_s(integer)

    singles = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    teens = ["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
    tens = ["Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]

    if integer < 10
      singles[integer].capitalize # prints out singles
    elsif integer / 10 == 1
      teens[integer-10] # prints out teens
    else
      if integer.to_s.chars[-1].to_i == 0
        tens[integer.to_s.chars[0].to_i-2] # prints out whole tens (-2 corrects for indexing)
      else
        tens[integer.to_s.chars[0].to_i-2] + "-" + singles[integer.to_s.chars[-1].to_i]
      end
    end

  end

  def print_song

    number = i_to_s(@number)

    while @number > 0 do
      if @number == 1
        puts "One bottle of beer on the wall,"
        puts "One bottle of beer,"
        puts "Take one down, pass it around,"
        puts "Zero bottles of beer on the wall."
        @number -= 1
      else
        puts "#{number} bottles of beer on the wall,"
        puts "#{number} bottles of beer,"
        
        @number -= 1
        number = i_to_s(@number)
        
        if @number != 1
          puts "Take one down, pass it around,"
          puts "#{number} bottles of beer on the wall."
        else
          puts "Take one down, pass it around,"
          puts "One bottle of beer on the wall."
        end
      end

    end
    # prints nothing when there is no beer

  end

end