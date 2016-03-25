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

attr_accessor :beers

    def initialize(beers)
        beers = 0 if beers < 0
        beers = 99 if beers > 99
        @beers = beers
    end

    def to_words(number)

        fin_answer = []

    if number == 0
        return "zero"
    elsif number < 0
        return "Please enter a number zero or greater."
    else

        word_at_comma_hash = {
            0 => "",
            1 => "thousand",
            2 => "million",
            3 => "billion",
            4 => "trillion",
            5 => "quadrillion",
            6 => "quintillion",
            7 => "sextillion",
            8 => "septillion",
            9 => "octillion",
            10 => "nonillion",
            11 => "decillion",
            12 => "undecillion",
            13 => "duodecillion",
            14 => "tredecillion",
            15 => "quattuordecillion",
            16 => "quindecillion",
            17 => "sexdecillion"
        }

        num_arr = number.to_s.split("").map! {|x| x.to_i}.reverse.each_slice(3).map(&:reverse).reverse
        
        num_arr.each_with_index do |arr, index| 
        
            if arr != [0, 0, 0]
                fin_answer << hundred(arr) << word_at_comma_hash[num_arr.size - index -1]
            else
                fin_answer << ""
            end
        end

    end

    fin_answer.flatten.join(" ").rstrip.tr("  ", " ")
end

def hundred(arr) 

    units = {
        0 => "",
        1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine"
    }

    teens = {
        10 => "ten",
        11 => "eleven",
        12 => "twelve",
        13 => "thirteen",
        14 => "fourteen",
        15 => "fifteen",
        16 => "sixteen",
        17 => "seventeen",
        18 => "eighteen",
        19 => "nineteen" 
    } 

    tens = {
        2 => "twenty",
        3 => "thirty",
        4 => "forty",
        5 => "fifty",
        6 => "sixty",
        7 => "seventy",
        8 => "eighty",
        9 => "ninety",
    }

# CHECK WITH [0, 3, 4]

    h_answer = []
    t_answer = []

    ten_lambda = lambda do |arr|

        

            if arr[0] == 1
                teens[arr[0..1].join("").to_i]
            elsif arr[1] == 0
                tens[arr[0]]
            else
                t_answer << tens[arr[0]] << "-" + units[arr[1]]
                t_answer.join("")
            end
    end


        if arr.size == 3

            if arr[0] == 0
                ten_lambda.call(arr[1..2])
            elsif arr[1] == 0
                h_answer << units[arr[0]] << "hundred" << units[arr[2]]
            else 
                h_answer << units[arr[0]] << "hundred" << ten_lambda.call(arr[1..2])
            end

        elsif arr.size == 2
            ten_lambda.call(arr)

        else 
            units[arr[0]]

        end
end

    def print_song
        
		if beers == 0
            puts ""
        end

       	while beers > 0  #plural stanzas
			plural_lyrics = ["#{to_words(beers).capitalize.split(" ").join("-")} bottles of beer on the wall,", "#{to_words(beers).capitalize.split(" ").join("-")} bottles of beer,", "Take one down, pass it around,", "#{to_words(beers - 1).capitalize.split(" ").join("-")} bottles of beer on the wall."]
			single_lyrics = ["#{to_words(beers).capitalize} bottle of beer on the wall,", "#{to_words(beers).capitalize} bottle of beer,", "Take one down, pass it around,"]

			if beers > 2 
          		puts plural_lyrics
          	    @beers -=1 
        	elsif beers == 2
            	puts plural_lyrics[0..2]
            	@beers -= 1     #= value of beers changes again here
            	puts "One bottle of beer on the wall."
            elsif beers == 1
            	puts single_lyrics[0..2]
            	@beers -=1     #= and here
            	puts "Zero bottles of beer on the wall."
            else
            	plural_lyrics[0..2]
            	puts "Zero bottles of beer on the wall"
            break if beers == 0
            end 
        end

    end
end



