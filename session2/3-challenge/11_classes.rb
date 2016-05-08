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

     def initialize(number)
        @number= number
        @number= 0 if @number < 0
        @number= 99 if @number >99
    end

    def word_number n
        if 0 <= n && n <= 19
            %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
        elsif n % 10 == 0
            %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
        else
            "#{word_number n/10*10}-#{word_number n%10}".downcase
        end.capitalize
    end

    def bottles n
        n == 1 ? bottles= "bottle" : bottles= "bottles"
    end

    def print_song
        @number.downto 1 do |x|
            print_stanza x
        end
    end

    
    def print_stanza n
        if @number.zero?
            String.new
        else
            puts  "#{word_number n} #{bottles n} of beer on the wall,",
                    "#{word_number n} #{bottles n} of beer,",
                    "Take one down, pass it around,",
                    "#{word_number n-1} #{bottles n-1} of beer on the wall."
        end
    end

end