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

  def initialize(n)
    m = n
    if n < 0
      m = 0
    elsif n > 99
      m = 99
    else
      m = n
    end
    @n = m
  end

  attr_accessor 'n'

  def print_song
    n = @n
    if n == 0
      ""
    else
      while n > 0
        if n == 1
          puts "One bottle of beer on the wall,"
          puts "One bottle of beer,"
          puts "Take one down, pass it around,"
          puts "Zero bottles of beer on the wall."
          n = n - 1
        elsif n == 2
          puts "Two bottles of beer on the wall,"
          puts "Two bottles of beer,"
          puts "Take one down, pass it around,"
          puts "One bottle of beer on the wall."
          puts "One bottle of beer on the wall,"
          puts "One bottle of beer,"
          puts "Take one down, pass it around,"
          puts "Zero bottles of beer on the wall."
          n = n - 2
        else
          puts "#{num_to_words(n).capitalize} bottles of beer on the wall,"
          puts "#{num_to_words(n).capitalize} bottles of beer,"
          puts "Take one down, pass it around,"
          puts "#{num_to_words(n-1).capitalize} bottles of beer on the wall."
          n = n - 1
        end
      end
    end
  end

end

def num_to_words(n)
  a = ["","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  b = ["","eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  c = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  word = ""

  if n == 0
    word = "zero"
  elsif n > 0 && n < 10
    word = a[n]
  elsif n == 10
    word = "ten"
  elsif n > 10 && n < 20
    word = b[n-10]
  elsif n >= 20 && n < 100 && n%10 == 0
    word = c[n/10]
  elsif n >= 20 && n < 100
    word = "#{c[n/10]}-#{a[n%10]}"
  else
    word = "Error, number should be larger than zero and smaller than hundred"
  end

end


#song_a = BeerSong.new(3)

#song_a.print_song
