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
    @n = n  
  
  end
  
  def english_ize(mod=0)
    local = @n
    local -= 1 if mod == 1
    eng_unit = ['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen',]
    eng_ten  = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
    if local >= 0 && local <= 19
     @num = "#{eng_unit[local]}"
    elsif [20, 30, 40, 50, 60, 70, 80, 90].include?(local)
      @num = "#{eng_ten[local/10]}"
    else
      parse = (local/10.0).to_s.split(".")
      @num = "#{eng_ten[parse[0].to_i]+"-"+eng_unit[parse[1].to_i].downcase}"
    end
    @num
  end
  
  def cycle 
      english_ize
      while @n > 0 
        if @n == 1
      puts "#{@num} bottle of beer on the wall,\n#{@num} bottle of beer,\nTake one down, pass it around,\n#{english_ize(1)} bottles of beer on the wall."
       elsif @n == 2
      puts "#{@num} bottles of beer on the wall,\n#{@num} bottles of beer,\nTake one down, pass it around,\n#{english_ize(1)} bottle of beer on the wall."
       else 
      puts "#{@num} bottles of beer on the wall,\n#{@num} bottles of beer,\nTake one down, pass it around,\n#{english_ize(1)} bottles of beer on the wall."
        end
        @n -= 1
        english_ize
      end
    end
    
  
  def print_song
    @n = 99 if @n > 99 
    @n = 0 if @n < 0 
    cycle
  end
    

end


