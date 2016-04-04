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
    def initialize(bottles)
        case
            when bottles < 0  then @bottles = 0
            when bottles > 99 then @bottles = 99
            else                   @bottles = bottles
        end
    end
    
    
    def text_num(num) # expects an integer between 0 and 99
        @ones = %w( zero one two three four five six seven eight nine ten
                   eleven twelve thirteen fourteen fifteen sixteen seventeen
                   eighteen nineteen)
                   @tens = ["", ""] + %w(twenty thirty forty fifty sixty seventy
                                         eighty ninety)
                                         case
                                             when num < 20
                                             @ones[num]
                                             when num <= 99
                                             "#{@tens[num/10]}" + ( num%10 == 0 ? "" : "-#{@ones[num%10]}" )
                                         end
    end
    
    def text_bottles(num)
        if num == 1
            "one bottle"
            else
            text_num(num) + " bottles"
        end
    end
    
    def stanza(num)
        "#{text_bottles(num).capitalize} of beer on the wall,\n" +
        "#{text_bottles(num).capitalize} of beer,\n" +
        "Take one down, pass it around,\n" +
        "#{text_bottles(num-1).capitalize} of beer on the wall.\n" 
    end
    
    def print_song()
        # seems like there could be a one-linere here
        @bottles.step(1, -1) do |n|
            print stanza(n)
        end
    end
    
end










