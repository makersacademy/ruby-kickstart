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

attr_accessor :bottles # I need to check what does it do exactly

  def initialize (bottles)  #Initialize method is called automaticaly when new.Class(). Basic method to have the Class working
  bottles = 0 if bottles < 0
  bottles = 99 if bottles > 99
  @bottles = bottles #what is this? => self.bottles = bottles
  end


  def convert(number)    #we need to convert number to english language output
    number_words = {
      90 => "ninety",   80 => "eighty",   70 => "seventy",
      60 => "sixty",    50 => "fifty",    40 => "forty",
      30 => "thirty",   20 => "twenty",   19 => "nineteen",
      18 => "eighteen", 17 => "seventeen",16 => "sixteen",
      15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
      12 => "twelve",   11 => "eleven",   10 => "ten",
      9  => "nine",     8  => "eight",    7  => "seven",
      6  => "six",      5  => "five",     4  => "four",
      3  => "three",    2  => "two",      1  => "one",
      0 => "zero"}    
    
    if number_words.has_key?(number)# returns from hash  unique numbers
      number_words[number] # gives us the value associated to a hash key
    
    else# for two digit numbers not already in hash
      [number_words[number - (number % 10)], number_words[number % 10] ].join(" ") 
      #hash[number - remainder] = hash value    #hash[remainder] = hash value
      #we can create an array with this both values and then use join method on the array
    end
  end

  def print_song
    if @bootles == 0 #Since Josh said it has to be a new string (not explained on the above instruction, though, see Rspec)
      String.new
    else
     @bottles.downto(1) do |i| #using conver for every i in @bottles we can create the song.
      if i == 1
        puts "#{convert(i)} bottle of beer on the wall,".capitalize
        puts "#{convert(i)} bottle of beer,".capitalize
        puts "Take one down, pass it around,".capitalize
        puts "Zero bottles of beer on the wall."
      else puts "#{convert(i)} bottles of beer on the wall,".capitalize
        puts "#{convert(i)} bottles of beer,".capitalize
        puts "Take one down, pass it around,".capitalize
        end
      end
    end
  end
end

# beers = BeerSong.new(100)
# beers.print_song