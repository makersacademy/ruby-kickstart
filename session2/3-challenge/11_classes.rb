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
  attr_accessor :beers 

  def initialize(beers)
    beers = 0  if beers < 0  #tend to use return beers = 0 if beers < 0 due to habit
    beers = 99 if beers > 99
    self.beers = beers #didn't add this to my original code which is important since self.beers =/= beers therefore you need to make them equal each other
  end

  def print_song
    beers.downto(1) { |i| print_stanza i }#prefer the shorthand 
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

  # completely forgot about this in my original code... so originally was only bottles in the stanza
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # messed up this part badly... so wanted to use humanize instead haha which doesnt work with rake it seems, well can't get it to work hrmmm
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


#couldn't do it in 30mins... but tried out a way to use to simplify certain things using humanize gem
=begin my shorten version using humanize
require 'humanize'
class BeerSong
  attr_accessor :beers
  
  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)

    if n.zero?
      String.new
    else
      puts "#{n.humanize.capitalize} #{bottle n} of beer on the wall,"        ,
           "#{n.humanize.capitalize} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{(n - 1).humanize.capitalize} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end
end
=end

