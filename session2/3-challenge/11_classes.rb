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

# create class BeerSong
# initialize to accept a parameter (number)

# public method called print_song that outputs
# create an array from 0 to num
# cycle through that array printint it out each time



class BeerSong
  def initialize num
  
    if num < 0
      @num = 0
    elsif num > 99
      @num = 99
    else 
      @num = num
  end
 
  def nums_to_words(num)
   arr1 = ["", "one","two", "three","four","five","six","seven", "eight","nine","ten","eleven","twelve","thirteen", "fourteen","fifteen","sixteen","seventeen","eighteen", "nineteen"]
   arr2 = ["", "", "twenty", "thirty", "forty", "fifty","sixty", "seventy", "eighty", "ninety"]
  if num == 0
    "zero"
  elsif num < 20
    arr1[num]
  elsif num % 10 != 0
   "#{ arr2[num / 10]}-#{ arr1[num % 10]}"
  else
    arr2[num / 10]
  end
  end

  def print_song
    array = [*(0..@num)]
    array.reverse.each {|i|
     b = nums_to_words(i).capitalize
     c = nums_to_words(i-1).capitalize
     if i == 0
       ""
     else
      
        if i == 1
          btl1 = "bottle"
          btl2 = "bottles"
        elsif i == 2
          btl1 = "bottles"
          btl2 = "bottle"
        elsif i > 2
          btl1 = "bottles"
          btl2 = "bottles"
        end
     
       puts "#{b} #{btl1} of beer on the wall,", "#{b} #{btl1} of beer,", "Take one down, pass it around,", "#{c} #{btl2} of beer on the wall."
    
     end
    }
  end
  end
end


