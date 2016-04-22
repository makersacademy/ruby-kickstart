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

  attr_accessor :number

  def initialize (number)
    @number = number
    if @number < 0
      @number = 0
    elsif @number > 99
      @number = 99
    end
    self.numbers_to_words
    self.print_song
  end

  def print_song
    while @number <= 99 && @number > 0
      if @number == 1
        bottle = "bottle"
      else
        bottle = "bottles"
      end
      puts "#{@no_of_bottles} #{bottle} of beer on the wall,".capitalize
      puts "#{@no_of_bottles} #{bottle} of beer,".capitalize
      puts "Take one down, pass it around,"
      @number -= 1
      if @number == 1
        bottle_less_one = "bottle"
      else
        bottle_less_one = "bottles"
      end
      numbers_to_words
      puts "#{@no_of_bottles} #{bottle_less_one} of beer on the wall.".capitalize
    end
  end

  def numbers_to_words
      set1 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
            "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
      set2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

      tens = ((@number % 100) / 10)
      ones = @number % 10
      string = ""

      string += string + set1[tens*10+ones] if tens < 2
      string += set2[tens]
      string = string + "-" + set1[ones] if ones != 0 && tens != 1
      string = set1[ones] if ones != 0 && tens == 0
      string << 'zero' if @number == 0
      @no_of_bottles = string
  end

end
