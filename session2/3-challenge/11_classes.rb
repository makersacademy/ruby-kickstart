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
    attr_accessor 'bottles'         #defines setter and getter
    
    def initialize(bottles)                      #initialise new beersong with a value for no. of bottles
        @bottles = bottles
        if bottles < 0 then @bottles = 0 end
        if bottles > 99 then @bottles = 99 end
        
    end
   

    def print_song
    
        
        while @bottles > 2 
            puts "#{make_text(@bottles)} bottles of beer on the wall,"
            puts "#{make_text(@bottles)} bottles of beer,"
            puts "Take one down, pass it around,"
            puts "#{make_text(@bottles-1)} bottles of beer on the wall."
            @bottles -= 1
        end
        if @bottles == 2
            puts "#{make_text(@bottles)} bottles of beer on the wall,"
            puts "#{make_text(@bottles)} bottles of beer,"
            puts "Take one down, pass it around,"
            puts "#{make_text(@bottles-1)} bottle of beer on the wall."
            @bottles -= 1
        end
        if @bottles == 1
            puts "#{make_text(@bottles)} bottle of beer on the wall,"
            puts "#{make_text(@bottles)} bottle of beer,"
            puts "Take one down, pass it around,"
            puts "#{make_text(@bottles-1)} bottles of beer on the wall."
            @bottles -= 1
        end
        if @bottles == 0
        return ""
        end
    end
    
end

def make_text(integer)
    numbers = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]                           # Numbers in written format
    tens = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]                                # held in arrays
    teens = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]             # to be joined later
    additions = ["-one", "-two", "-three", "-four", "-five", "-six", "-seven", "-eight", "-nine"]    
        
  
    if (integer <=10 && integer >=0) then number = numbers[integer] end         # Sets integers 0-10 to text version
    if (integer < 20 && integer > 10) then number = teens[integer - 11] end   # Sets integers 11-19 to text
    if (integer % 10 == 0) && (integer != 0) then number = tens[(integer/10)-1] end              # Sets 20,30 etc. to text
        
    if integer % 10 != 0 && integer > 20      # check for numbers above 20 that arn't exact multiples of 10
        split_num = integer.to_s.split("")      # convert to string then split the digits into an array 
        split_num.map! { |x| x.to_i }           # convert these string numbers in array back to integers
          
        for x in 1..9
            if x == split_num[0] then first_half = tens[x-1] end                #converts first half into written multiples of 10
            if x == split_num[1] then second_half = additions[x-1] end          #converts second half into written single digit with - included
        end
    number = first_half + second_half                                       #sets number to both halfs added together
    end
return number      
end