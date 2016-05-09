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

class BeerSong #sets class called Beer Song
  attr_accessor :beers #sets getter and setter methods to read and write the instance variables

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end
#initialize method requiring one argument passed, a string called beers.
#if statement ensuring that number of bottles do not fall outside 0-99
#self method meaning @beers = beers, passing the argument to an instance variable called @beers. 
  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
 #method called print_song
 #call the method downto on beer and iterate over it and running a method 'print_stanza' (still to be defined)  the stanza on each number as per below

  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  #method called print_stanza, passing a number 'n' as the argument, which comes from the 'i'
  #above, which in turn is each iterated number of beers going down to 1. 
  # it uses the translate method and a method to ensure grammar is correct (ie 1 bottle, not
  # multiple bottles. Thus printing the words to the song for each bottle of beer 99 to 1. 
  # it finishes at 0. 

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end

		