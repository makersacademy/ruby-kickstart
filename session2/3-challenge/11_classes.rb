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

attr_accessor 'number'

def initialize(number)
@number = number
if @number <= 0
	return
elsif @number > 99
	@number = 99
end
end

def print_song
while @number >= 3 do
puts "#{tens number}#{singles number} bottles of beer on the wall,"
puts "#{tens number}#{singles number} bottles of beer,"
puts "Take one down, pass it around,"
@number -= 1
puts "#{tens number}#{singles number} bottles of beer on the wall."
end
if @number == 2
puts "Two bottles of beer on the wall,"
puts "Two bottles of beer,"
puts "Take one down, pass it around,"
puts "One bottle of beer on the wall."
@number -= 1
end
if @number == 1
puts "One bottle of beer on the wall,"
puts "One bottle of beer,"
puts "Take one down, pass it around,"
puts "Zero bottles of beer on the wall."
end
if @number == 0
print ""
end
end

def tens(number)
if @number >= 90 then return "Ninety"
elsif @number >= 80 then return "Eighty"
elsif @number >= 70 then return "Seventy"
elsif @number >=60 then	return "Sixty"
elsif @number >=50 then	return "Fifty"
elsif @number >=40 then	return "Forty"
elsif @number >=30 then	return "Thirty"
elsif @number >=20 then	return  "Twenty"
elsif @number == 19 then return  "Nineteen"
elsif @number == 18 then return  "Eighteen"
elsif @number == 17 then return  "Seventeen"
elsif @number == 16 then return  "Sixteen"
elsif @number == 15 then return  "Fifteen"
elsif @number == 14 then return  "Fourteen"
elsif @number == 13 then return  "Thirteen"
elsif @number == 12 then return  "Twelve"
elsif @number == 11 then return  "Eleven"
elsif @number == 10 then return  "Ten"
elsif @number == 9 then return  "Nine"
elsif @number == 8 then return  "Eight"
elsif @number == 7 then return  "Seven"
elsif @number == 6 then return  "Six"
elsif @number == 5 then return  "Five"
elsif @number == 4 then return  "Four"
elsif @number == 3 then return  "Three"
elsif @number == 2 then return  "Two"
end
end

def singles(number)
digit = @number.to_s.split(//)
if @number >= 20
	if digit[1] == "9" then return "-nine"
	elsif digit[1] == "8" then return "-eight"
        elsif digit[1] == "7" then return  "-seven"
        elsif digit[1] == "6" then return  "-six"
        elsif digit[1] == "5" then return  "-five"
        elsif digit[1] == "4" then return  "-four"
        elsif digit[1] == "3" then return  "-three"
        elsif digit[1] == "2" then return  "-two"
        elsif digit[1] == "1" then return  "-one"
        elsif digit[1] == "0" then return  ""
	end
else
	return ""
end
end

end
