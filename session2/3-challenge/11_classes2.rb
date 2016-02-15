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
#counter = 6
class BeerSong
  attr_accessor :num
  def initialize(num)
    num < 0 ? @num = 0 : num > 99 ? num = 99 :
    @num = num
  end

  def print_song
    if @num == 0
      puts ""
    else
      while @num > 0 do
        puts  "#{read_num(@num)} bottle#{plural @num} of beer on the wall,"    ,
              "#{read_num(@num)} bottle#{plural @num} of beer," ,
              "Take one down, pass it around,"  ,
              "#{read_num(@num-1)} bottle#{plural (@num-1)} of beer on the wall."
        @num-=1
      end
    end
  end

  def plural number
    number == 1 ? "" : "s"
  end

  def read_num(num)
  	num_ary = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" ]
  	tens_ary = ["Zero", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" ]

  	ary = num.to_s.split("")
  	first = ary[0].to_i
  	second = ary[1].to_i

  	(ary.length > 1 && second == 0) ? tens_ary[first] : (num >= 21) ? tens_ary[first]+"-"+num_ary[second].downcase : num_ary[num]
  end
end
