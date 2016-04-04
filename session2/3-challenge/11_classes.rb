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

D = {   2   =>  "Twenty", 3   =>  "Thirty", 4   =>  "Forty", 5   =>  "Fifty", 
        6   =>  "Sixty",  7   =>  "Seventy", 8   =>  "Eighty", 9   =>  "Ninety",
        10  =>  "Ten", 11  =>  "Eleven", 12  =>  "Twelve", 13  =>  "Thirteen",
        14  =>  "Fourteen", 15  =>  "Fifteen", 16  =>  "Sixteen", 17  =>  "Seventeen",
        18  =>  "Eighteen", 19  =>  "Nineteen"
}

U = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
        7 => "seven", 8 => "eight", 9 => "nine"
}

def numberToText(n)
    tens , units = n / 10 , n % 10
    return "Zero" if n == 0
    return "#{U[n]}".capitalize if n.between?(1,9)
    return "#{D[n]}" if n.between?(10,19)
    if units == 0
        return "#{D[tens]}"
    else
        return "#{D[tens]}-#{U[units]}"
    end
end

class BeerSong
    attr_reader :beers
    def initialize(beers)
        @beers = beers
        @beers = 0 if beers < 0
        @beers = 99 if beers > 99
    end
    
    def removeBeer
        @beers -= 1
    end
    
    def print_song
        while @beers.between?(3,99)
            puts "#{numberToText(@beers)} bottles of beer on the wall,"
            puts "#{numberToText(@beers)} bottles of beer,"
            puts "Take one down, pass it around,"
            removeBeer
            puts "#{numberToText(@beers)} bottles of beer on the wall."
        end

        if @beers == 2
            puts "#{numberToText(@beers)} bottles of beer on the wall,"
            puts "#{numberToText(@beers)} bottles of beer,"
            puts "Take one down, pass it around,"
            removeBeer
            puts "#{numberToText(@beers)} bottle of beer on the wall."
        end
        
        if @beers == 1
            puts "#{numberToText(@beers)} bottle of beer on the wall,"
            puts "#{numberToText(@beers)} bottle of beer,"
            puts "Take one down, pass it around,"
            removeBeer
            puts "#{numberToText(@beers)} bottles of beer on the wall."
        end
        
        return "" if @beers == 0
    end
end