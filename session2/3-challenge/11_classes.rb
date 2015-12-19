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

# input = gets.chomp
# pubCrawl = BeerSong.new(99)
# pubCrawl.print_song

class BeerSong
  # attr_accessor 'bottles'

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    @bottles.downto(1) do |i|
      print build_stanza(i)
    end
  end

  private

  #Private method builds stanza calling count_bottles.
  def build_stanza(num)
    stanza = "#{count_bottles(num)} of beer on the wall,\n#{count_bottles(num)} of beer,\nTake one down, pass it around,\n#{count_bottles(num-1)} of beer on the wall.\n"
  end

  # Private method builds the bottle string calling write_num.
  def count_bottles(num)
    bottles = write_num(num).capitalize
    bottles << " bottle"
    if num != 1
      bottles << "s"
    end
    bottles
  end

  # Private method to write out the number of bottles as a string
  def write_num(num)
    output_str = ""

    # Test case: num is in the tens
    unless num/10 == 0
      # Separate the double-digits (tens) being written out and single-digit remainder (num)
      tens = num/10
      num = num - (num/10*10)

      # Exception: number is in the teens. Appends and returns respective teen string
      # Hashes only load if required.
      if tens==1 && num != 0
        teens_hsh = {1=>"eleven", 2=>"twelve", 3=>"thirteen", 4=>"fourteen", 5=>"fifteen", 6=>"sixteen", 7=>"seventeen", 8=>"eighteen", 9=>"nineteen"}
        output_str << teens_hsh[num]
        return output_str
      # Otherwise appends the respective double-digit string
      else
        double_hsh = {1=> "ten", 2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
        output_str << double_hsh[tens]
      end

      # Test for case: num has no single digits. Returns output string to exit the method
      # Otherwise appends a hyphen
      if num == 0
        return output_str
      else
        output_str << "-"
      end
    end

    # Remaining single-digits

    # Exception: num is zero
    if num == 0
      output_str = "zero"
    # Otherwise append respective single-digit string
    else
      single_hsh = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
      output_str << single_hsh[num]
    end
    output_str
  end
end
