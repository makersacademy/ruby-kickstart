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
	def initialize(num_bottles = 0)
		@num_bottles = num_bottles
		@num_bottles = 99 if @num_bottles >= 99
		@num_bottles = 0 if @num_bottles <= 0
	end

	def print_song
		print_song_outside @num_bottles
	end
end

def convert_number_to_text number
	
	ones = { :'1' => "one", :'2' => "two", :'3' => "three", :'4' => "four",
		:'5' => "five", :'6' => "six", :'7' => "seven", :'8' => "eight", :'9' => "nine" }
	teens = { :'10' => "ten", :'11' => "eleven", :'12' => "twelve", :'13' => "thirteen", :'14' => "fourteen",
		:'15' => "fifteen", :'16' => "sixteen", :'17' => "seventeen", :'18' => "eighteen", :'19' => "nineteen" }
	tens = { :'20' => "twenty", :'30' => "thirty", :'40' => "forty", :'50' => "fifty",
		:'60' => "sixty", :'70' => "seventy", :'80' => "eighty", :'90' => "ninety" }

	num_string = number.to_s
	return ones[num_string.to_sym] if ones.keys.include?(num_string.to_sym)
	return teens[num_string.to_sym] if teens.keys.include?(num_string.to_sym)
	return tens[num_string.to_sym] if tens.keys.include?(num_string.to_sym)

	words_ones = (number % 10).to_s
	words_tens = (number - (number % 10)).to_s
	new_string = "#{tens[words_tens.to_sym]}-#{ones[words_ones.to_sym]}"

	new_string
end

def print_song_outside num_bottles
	while true
		if num_bottles == 1 then
			puts "One bottle of beer on the wall,"
			puts "One bottle of beer,"
			puts "Take one down, pass it around,"
			puts "Zero bottles of beer on the wall."
			num_bottles -= 1
		elsif num_bottles == 0 then
			break
		else
			text_num = convert_number_to_text(num_bottles)
			new_num = convert_number_to_text(num_bottles - 1)
			puts "#{text_num.capitalize} bottles of beer on the wall,"
			puts "#{text_num.capitalize} bottles of beer,"
			puts "Take one down, pass it around,"
			puts "#{new_num.capitalize} #{num_bottles > 2 ? 'bottles' : 'bottle'} of beer on the wall."
			num_bottles -= 1
		end
	end
end