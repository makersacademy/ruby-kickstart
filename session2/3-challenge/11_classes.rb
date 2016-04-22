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

attr_accessor 'starting_bottles'

  def initialize(starting_bottles)
    if starting_bottles < 0
      starting_bottles = 0
    elsif starting_bottles > 99
      starting_bottles = 99
    end
    self.starting_bottles = starting_bottles
  end

  def bottles_to_english
    # seperate first and second digit in to an array
    digits = starting_bottles.to_s.split(//) # split digits in to array

    # deal with 2 digit numbers
    if digits.length == 2
      # handle 1-19
      num_solved = false
      if digits[0] == "0" && digits[1] == "0"
        string = "Zero"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "1"
        string = "One"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "2"
        string = "Two"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "3"
        string = "Three"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "4"
        string = "Four"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "5"
        string = "Five"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "6"
        string = "Six"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "7"
        string = "Seven"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "8"
        string = "Eight"
        num_solved = true
      elsif digits[0] == "0" && digits[1] == "9"
        string = "Nine"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "0"
        string = "Ten"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "1"
        string = "Eleven"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "2"
        string = "Twelve"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "3"
        string = "Thirteen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "4"
        string = "Fourteen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "5"
        string = "Fifteen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "6"
        string = "Sixteen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "7"
        string = "Seventeen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "8"
        string = "Eighteen"
        num_solved = true
      elsif digits[0] == "1" && digits[1] == "9"
        string = "Nineteen"
        num_solved = true
      end

      if !num_solved
        # handle tens for 20 - 90
        if digits[0] == "0" || digits[0] == "1"
          string_a = "" # no need to handle 0 and 1 as they're handled above
        elsif digits[0] == "2"
          string_a = "Twenty"
        elsif digits[0] == "3"
          string_a = "Thirty"
        elsif digits[0] == "4"
          string_a = "Forty"
        elsif digits[0] == "5"
          string_a = "Fifty"
        elsif digits[0] == "6"
          string_a = "Sixty"
        elsif digits[0] == "7"
          string_a = "Seventy"
        elsif digits[0] == "8"
          string_a = "Eighty"
        elsif digits[0] == "9"
          string_a = "Ninety"
        end

        # handle singles for 20-99
        if digits[1] == "0"
          string_b = ""
        elsif digits[1] == "1"
          string_b = "one"
        elsif digits[1] == "2"
          string_b = "two"
        elsif digits[1] == "3"
          string_b = "three"
        elsif digits[1] == "4"
          string_b = "four"
        elsif digits[1] == "5"
          string_b = "five"
        elsif digits[1] == "6"
          string_b = "six"
        elsif digits[1] == "7"
          string_b = "seven"
        elsif digits[1] == "8"
          string_b = "eight"
        elsif digits[1] == "9"
          string_b = "nine"
        end

        if digits[1] != "0"
          string = string_a + "-" + string_b
        else
          string = string_a
        end
      end
      return string
    end
      if digits.length == 1 # if 1 digits
        if digits[0] == "0"
          string = "Zero"
        elsif digits[0] == "1"
          string = "One"
        elsif digits[0] == "2"
          string = "Two"
        elsif digits[0] == "3"
          string = "Three"
        elsif digits[0] == "4"
          string = "Four"
        elsif digits[0] == "5"
          string = "Five"
        elsif digits[0] == "6"
          string = "Six"
        elsif digits[0] == "7"
          string = "Seven"
        elsif digits[0] == "8"
          string = "Eight"
        elsif digits[0] == "9"
          string = "Nine"
        end
      return string
      end

  end

  def print_song
    i = starting_bottles

    while i >= 0
      if i == 1
      puts "#{bottles_to_english} bottle of beer on the wall,",
           "#{bottles_to_english} bottle of beer,",
           "Take one down, pass it around,"
           i -= 1
           self.starting_bottles -= 1
      puts "#{bottles_to_english} bottles of beer on the wall."
      elsif i == 2
      puts "#{bottles_to_english} bottles of beer on the wall,",
           "#{bottles_to_english} bottles of beer,",
           "Take one down, pass it around,"
           i -= 1
           self.starting_bottles -= 1
           puts "#{bottles_to_english} bottle of beer on the wall."
         elsif i == 0
         puts ""
              return
        else
          puts "#{bottles_to_english} bottles of beer on the wall,",
               "#{bottles_to_english} bottles of beer,",
               "Take one down, pass it around,"
               i -= 1
               self.starting_bottles -= 1
          puts "#{bottles_to_english} bottles of beer on the wall."
         end
    end
  end

end
