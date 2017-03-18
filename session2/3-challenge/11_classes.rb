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
<<<<<<< HEAD





#referred to solution a lot here! Added notes

class BeerSong
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0 #no negative amounts of beer bottles are output!
    beers = 99 if beers > 99 #similarly, no more than 99 bottles of beer will be on the wall
    self.beers = beers
  end

  def print_song #prints out the numbers of 
    beers.downto 1 do |i| #refers to layout_of_verse and inputs values of 'n' all the way from 99 (defined in initialize method) down to 0
      layout_of_verse i
    end
  end

  def layout_of_verse(n) #this method prints the main layout of the "Bottles of beer" song
    if n.zero? #this asks if n is zero. If it is, then we start the String as new (i.e. from 99)
      String.new
    else #if n is not 0, then we continue from last 'n' in the verse (as defined above). It calls on bottle method and translate method which are calculated depending on 'n'
      puts "#{translate n} #{bottle n} of beer on the wall,",
           "#{translate n} #{bottle n} of beer,",
           "Take one down, pass it around,",
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles" depending on what value of n we have reached (only 'bottle' if n=1, otherwise it's 'bottle')
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19 #for all n between 0 and 19, we output the following (here n is used as the index for the output)
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0 #if they are divisible by 10, we output the following (n/10 is used as the index for the output)
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else #for all n that don't satisfy the above two conditions (i.e. between the tens and more than 20)
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end














=======
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
