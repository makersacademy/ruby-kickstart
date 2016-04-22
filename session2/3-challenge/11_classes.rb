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
  def initialize number_of_bottles
    @number_of_bottles = number_of_bottles if 0 <= number_of_bottles && number_of_bottles < 100
    @number_of_bottles = 0 if number_of_bottles < 0
    @number_of_bottles = 99 if 99 < number_of_bottles
  end

  def print_song
    return "" if @number_of_bottles == 0
    (1..@number_of_bottles).reverse_each do |n|
      puts "#{self.number_of_bottles_in_words} #{self.bottle_or_bottles} of beer on the wall,"
      puts "#{self.number_of_bottles_in_words} #{self.bottle_or_bottles} of beer,"
      puts "Take one down, pass it around,"
      self.knock_off_a_bottle
      puts "#{self.number_of_bottles_in_words} #{self.bottle_or_bottles} of beer on the wall."
    end
  end

  def knock_off_a_bottle
    @number_of_bottles -= 1
  end

  def bottle_or_bottles
    return "bottle" if @number_of_bottles == 1
    return "bottles"
  end

  def tens
    return (@number_of_bottles - (@number_of_bottles % 10)) / 10
  end

  def ones
    return @number_of_bottles % 10
  end

  def number_of_bottles_in_words
    number = ""
    return "Zero" if @number_of_bottles == 0
    return ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"][self.ones] if self.tens == 1
    number << ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"][self.tens-2] if 1 < self.tens
    number << "-" if 1 < self.tens && 0 < self.ones
    number << ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][self.ones - 1] if 0 < self.ones
    return number.capitalize
  end

end





