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
  @bottles = 0

  def initialize(bottles)
    if bottles>99
      @bottles = 99
    elsif bottles<0
      @bottles = 0
    else
      @bottles = bottles
    end
  end

    def print_song
      b = @bottles
      (1..@bottles).each do |i|
        bEng = numToEng(b)
        if i==@bottles
          puts bEng + " bottle of beer on the wall,"
          puts bEng + " bottle of beer,"
          puts "Take one down, pass it around,"
          b = b-1
          bEng = numToEng(b)
          puts bEng + " bottles of beer on the wall."
        else
          puts bEng + " bottles of beer on the wall,"
          puts bEng + " bottles of beer,"
          puts "Take one down, pass it around,"
          b = b-1
          bEng = numToEng(b)
          if b==1
            puts bEng + " bottle of beer on the wall."
          else
            puts bEng + " bottles of beer on the wall."
          end
        end
      end
    end

    def numToEng(n)
      engNums = ['zero','one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
      engNumsTens = ['Twenty','Thirty','Forty','Fifty','Sixty','Seventy','Eighty','Ninety']
      if n<20
        return engNums[n].capitalize
      else
        dig1 = n.to_s[0].to_i
        dig2 = n.to_s[1].to_i
        if dig2==0
          return engNumsTens[dig1-2].to_s
        else
          return engNumsTens[dig1-2].to_s + "-" + engNums[dig2].to_s
        end
      end
    end
end
