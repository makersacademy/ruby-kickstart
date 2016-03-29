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
    if beers < 0
    @beers = 0
    elsif beers > 99
       @beers = 99
    else
       @beers = beers
    end
   end
 
   def englishNumber(beers)
     string = ''
     ones = ["zero","one","two","three","four","five","six","seven","eight","nine"]
     tens = ["Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
     teens = ["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
    left = beers/10.to_i
     right = beers - ((beers/10.to_i)*10)
     if left == 0
       string = ones[right].capitalize
     elsif left == 1
       string = teens[right]
     elsif left > 1
       if right == 0
         string = tens[left-2]
       else
         string << tens[left-2]
         string << "-"
         string << ones[right]
       end
     end
   end
 
   def bottle_vs_bottles(beers)
     if beers == 1 then 'bottle' else 'bottles' end
   end
 
   def print_song
     beers = @beers
     while beers > 0
     	puts "#{englishNumber(beers)} #{bottle_vs_bottles(beers)} of beer on the wall,"
       puts "#{englishNumber(beers)} #{bottle_vs_bottles(beers)} of beer,"
     	beers = beers-1
     	puts "Take one down, pass it around,"
       puts "#{englishNumber(beers)} #{bottle_vs_bottles(beers)} of beer on the wall."
     end
   end
 
 end
 




							
